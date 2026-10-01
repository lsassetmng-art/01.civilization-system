# ============================================================
# STREAMING OS IDENTITY BRIDGE AND R11 OWNER RLS
# EXECUTABLE SQL FREEZE
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: final-rls-and-auth-freeze
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document freezes executable SQL design for:

- Auth -> Civilization identity binding
- current Civilization identity resolver
- Streaming principal foundation required by R11
- R11 channel records
- R11 channel profile states
- individual creator/channel-owner RLS

This document DOES NOT execute SQL.

Database mutation requires a separate GO.

# ============================================================
# 2. SCOPE
# ============================================================

in_scope:

- streaming.auth_civilization_identity_bindings
- streaming.current_civilization_id()
- streaming.streaming_principals
- streaming.channel_records
- streaming.channel_profile_states
- creator_self / channel_owner read path
- creator_self / channel_owner insert/update path
- fail-closed identity behavior
- authenticated role grants required by these policies

out_of_scope:

- company_official_manager executable policy
- company_overseer executable policy
- platform_operator support policy
- corporate_channel_oversight_records
- affiliated_streamer_references
- public raw-table read
- R12 Program Management
- R13 Session Operation
- R14 Archive / Upload
- identity binding data insertion
- source implementation

Existing higher-level corporate authority rules remain canonical.
They are not removed by this R11 owner-only executable freeze.

# ============================================================
# 3. PRECONDITIONS
# ============================================================

Required before execution:

- Supabase auth schema exists
- auth.users exists
- auth.uid() exists
- database role authenticated exists
- streaming target tables do not contain conflicting definitions
- executable corporate authority policies are not mixed into this migration

Observed development-state assumptions at design time:

- auth.uid() available
- auth.jwt() available
- auth.role() available
- streaming.streaming_principals absent
- streaming.channel_records absent
- streaming.channel_profile_states absent
- streaming policy count = 0
- existing non-Business auth->Civilization bridge absent

These observations must be rechecked immediately before DB mutation.

# ============================================================
# 4. EXECUTION MODEL
# ============================================================

Execution must occur inside one PostgreSQL transaction.

Failure rule:

- any SQL error -> transaction rollback
- no partial migration continuation
- no automatic retry

After COMMIT and real data creation:

- destructive rollback is prohibited
- use forward-fix migration

No DROP-based automatic rollback shall be attached to runtime deployment.

# ============================================================
# 5. EXECUTABLE SQL
# ============================================================

SQL_BEGIN

begin;

create schema if not exists streaming;

-- ============================================================
-- A. AUTH -> CIVILIZATION IDENTITY BRIDGE
-- ============================================================

create table streaming.auth_civilization_identity_bindings (
  auth_user_id uuid primary key,
  civilization_id uuid not null,
  binding_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint fk_streaming_auth_identity_auth_user
    foreign key (auth_user_id)
    references auth.users (id)
    on update cascade
    on delete cascade,

  constraint ck_streaming_auth_identity_binding_status
    check (binding_status in (
      'active',
      'revoked'
    ))
);

create index ix_streaming_auth_identity_civilization
  on streaming.auth_civilization_identity_bindings
  (civilization_id, binding_status);

alter table streaming.auth_civilization_identity_bindings
  enable row level security;

revoke all
  on table streaming.auth_civilization_identity_bindings
  from public, anon, authenticated;

-- No authenticated policy is created.
-- Direct end-user access remains fail-closed.
-- Trusted identity provisioning is a separate administrative path.

-- ============================================================
-- B. CURRENT CIVILIZATION ID RESOLVER
-- ============================================================

create function streaming.current_civilization_id()
returns uuid
language sql
stable
security definer
set search_path = pg_catalog
as $function$
  select b.civilization_id
  from streaming.auth_civilization_identity_bindings as b
  where b.auth_user_id = auth.uid()
    and b.binding_status = 'active'
  limit 1
$function$;

revoke all
  on function streaming.current_civilization_id()
  from public;

grant execute
  on function streaming.current_civilization_id()
  to authenticated;

-- ============================================================
-- C. STREAMING PRINCIPAL FOUNDATION
-- Existing 0302401 executable DDL freeze preserved.
-- ============================================================

create table streaming.streaming_principals (
  streaming_principal_id uuid primary key,
  principal_civilization_id uuid not null,
  principal_type text not null,
  ownership_mode text not null,
  primary_rights_holder_civilization_id uuid not null,
  primary_revenue_beneficiary_civilization_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_streaming_principals_principal_civilization
    unique (principal_civilization_id),

  constraint ck_streaming_principals_principal_type
    check (principal_type in (
      'individual',
      'group',
      'company',
      'ai_human'
    )),

  constraint ck_streaming_principals_ownership_mode
    check (ownership_mode in (
      'self_owned',
      'company_owned',
      'group_owned',
      'delegated_operated'
    ))
);

alter table streaming.streaming_principals
  enable row level security;

create policy streaming_principals_self_select
on streaming.streaming_principals
for select
to authenticated
using (
  principal_civilization_id =
  streaming.current_civilization_id()
);

grant usage
  on schema streaming
  to authenticated;

grant select
  on table streaming.streaming_principals
  to authenticated;

-- No authenticated INSERT / UPDATE / DELETE.
-- Principal bootstrap remains server-controlled.

-- ============================================================
-- D. R11 CHANNEL RECORD
-- Existing 0302404 channel DDL preserved.
-- ============================================================

create table streaming.channel_records (
  channel_record_id uuid primary key,
  channel_owner_civilization_id uuid not null,
  channel_display_name text not null,
  channel_status text not null,
  official_channel_flag boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint ck_channel_records_status
    check (channel_status in (
      'active',
      'restricted',
      'suspended',
      'archived'
    ))
);

create index ix_channel_records_owner
  on streaming.channel_records
  (channel_owner_civilization_id);

create index ix_channel_records_status
  on streaming.channel_records
  (channel_status);

alter table streaming.channel_records
  enable row level security;

create policy channel_records_owner_select
on streaming.channel_records
for select
to authenticated
using (
  channel_owner_civilization_id =
  streaming.current_civilization_id()
);

create policy channel_records_owner_insert
on streaming.channel_records
for insert
to authenticated
with check (
  channel_owner_civilization_id =
  streaming.current_civilization_id()
);

create policy channel_records_owner_update
on streaming.channel_records
for update
to authenticated
using (
  channel_owner_civilization_id =
  streaming.current_civilization_id()
)
with check (
  channel_owner_civilization_id =
  streaming.current_civilization_id()
);

grant select, insert, update
  on table streaming.channel_records
  to authenticated;

-- DELETE is intentionally not granted.
-- Company and platform policies are intentionally absent here.

-- ============================================================
-- E. R11 CHANNEL PROFILE STATE
-- Existing 0302404 channel profile DDL preserved.
-- ============================================================

create table streaming.channel_profile_states (
  channel_profile_state_id uuid primary key,
  channel_record_id uuid not null,
  profile_description text null,
  artwork_reference text null,
  visibility_setting text not null,
  updated_at timestamptz not null default now(),

  constraint ck_channel_profile_states_visibility
    check (visibility_setting in (
      'public',
      'limited',
      'restricted'
    )),

  constraint uq_channel_profile_states_channel
    unique (channel_record_id),

  constraint fk_channel_profile_states_channel
    foreign key (channel_record_id)
    references streaming.channel_records (channel_record_id)
    on update cascade
    on delete cascade
);

alter table streaming.channel_profile_states
  enable row level security;

create policy channel_profile_states_owner_select
on streaming.channel_profile_states
for select
to authenticated
using (
  exists (
    select 1
    from streaming.channel_records as c
    where c.channel_record_id =
          channel_profile_states.channel_record_id
      and c.channel_owner_civilization_id =
          streaming.current_civilization_id()
  )
);

create policy channel_profile_states_owner_insert
on streaming.channel_profile_states
for insert
to authenticated
with check (
  exists (
    select 1
    from streaming.channel_records as c
    where c.channel_record_id =
          channel_profile_states.channel_record_id
      and c.channel_owner_civilization_id =
          streaming.current_civilization_id()
  )
);

create policy channel_profile_states_owner_update
on streaming.channel_profile_states
for update
to authenticated
using (
  exists (
    select 1
    from streaming.channel_records as c
    where c.channel_record_id =
          channel_profile_states.channel_record_id
      and c.channel_owner_civilization_id =
          streaming.current_civilization_id()
  )
)
with check (
  exists (
    select 1
    from streaming.channel_records as c
    where c.channel_record_id =
          channel_profile_states.channel_record_id
      and c.channel_owner_civilization_id =
          streaming.current_civilization_id()
  )
);

grant select, insert, update
  on table streaming.channel_profile_states
  to authenticated;

-- DELETE is intentionally not granted.

commit;

SQL_END

# ============================================================
# 6. IDENTITY FAIL-CLOSED RULE
# ============================================================

streaming.current_civilization_id() returns null when:

- auth.uid() is null
- no binding exists
- only revoked binding exists

RLS owner predicates therefore evaluate false/null
and deny access.

No client-provided actor_civilization_id
may replace this resolver.

# ============================================================
# 7. IDENTITY BINDING DATA RULE
# ============================================================

This migration creates structure only.

It MUST NOT automatically populate:

streaming.auth_civilization_identity_bindings

No inference is allowed from:

- auth.users.id
- email
- phone
- JWT metadata
- user metadata
- BusinessOS worker identity
- request actor_civilization_id

A separate trusted provisioning step
must establish each Auth -> Civilization binding.

Until a binding exists,
R11 authenticated owner access must fail closed.

# ============================================================
# 8. PRINCIPAL BOOTSTRAP RULE
# ============================================================

This migration creates streaming.streaming_principals
but does not automatically create principal rows.

Principal bootstrap:

- must be explicit
- must be server-controlled
- must be auditable
- must not execute inside RLS
- must not infer ownership from affiliation

R11 source implementation must distinguish:

identity resolved
from
streaming principal initialized.

# ============================================================
# 9. PUBLIC READ BOUNDARY
# ============================================================

Existing canonical security permits
a public-facing safe subset where appropriate.

This executable R11 owner freeze
does NOT grant raw channel table access to anon.

Public Channel viewing must be implemented later
through an explicitly frozen projection/API boundary.

Therefore:

- no anon channel_records grant
- no anon channel_profile_states grant
- no public raw-table policy

# ============================================================
# 10. CORPORATE AUTHORITY BOUNDARY
# ============================================================

This SQL does not implement:

- company_official_manager
- company_overseer
- platform_operator support access

Those authority classes remain canonical,
but require trusted authority resolvers
separate from current_civilization_id().

Mere affiliation must never grant owner mutation.

# ============================================================
# 11. R11 SERVICE CONTRACT
# ============================================================

R11 request processing:

Authorization Bearer token
  ->
Supabase authentication
  ->
auth.uid()
  ->
streaming.current_civilization_id()
  ->
compare with actor_civilization_id
  ->
evaluate channel ownership
  ->
repository mutation/read

Required error boundary:

no authenticated user:
- unauthorized_actor

no active identity binding:
- unauthorized_actor

actor_civilization_id mismatch:
- unauthorized_actor

identity valid but target not owned:
- forbidden_action

# ============================================================
# 12. DIRECT TABLE ACCESS RULE
# ============================================================

R11 UI must NOT call Supabase tables directly.

Required application layering:

UI
  ->
HTTP route
  ->
validator
  ->
service authorization
  ->
repository
  ->
database

Database RLS is defense in depth
and must not replace service authorization.

# ============================================================
# 13. DB APPLY PRECHECK
# ============================================================

Before separate DB mutation GO, verify READ ONLY:

- authenticated role exists
- auth.uid() exists
- auth.users exists
- streaming target tables remain absent
- conflicting policy names remain absent
- no unexpected streaming schema drift
- PERSONA_DATABASE_URL points to intended target

If any prerequisite differs,
do not run the migration.

# ============================================================
# 14. DB APPLY POSTCHECK
# ============================================================

After future DB mutation, verify:

- 4 required tables exist
- current_civilization_id() exists
- identity table direct authenticated access denied
- RLS enabled on all four tables
- expected policy count = 7

Expected policies:

1. streaming_principals_self_select
2. channel_records_owner_select
3. channel_records_owner_insert
4. channel_records_owner_update
5. channel_profile_states_owner_select
6. channel_profile_states_owner_insert
7. channel_profile_states_owner_update

Also verify:

- no DELETE grant to authenticated
- no anon raw-table grant
- no identity binding row created by migration

# ============================================================
# 15. ROLLBACK POLICY
# ============================================================

During migration transaction:

- SQL error -> PostgreSQL transaction rollback

After successful COMMIT:

- no automatic DROP rollback
- no destructive retry
- no reverse migration without explicit review
- use forward-fix for defects once data may exist

# ============================================================
# 16. EXECUTION GATES
# ============================================================

This document authorizes design only.

Not authorized by this document:

- DB mutation
- identity data insertion
- source mutation
- stage
- commit
- push

Required next gates:

1. executable SQL design verification
2. DB apply preflight READ ONLY
3. explicit DB mutation GO
4. DB apply verification
5. identity provisioning design/data gate
6. R11 source implementation GO

# ============================================================
# 17. FIXED STATEMENT
# ============================================================

R11 owner-path database authorization
shall resolve authenticated user identity
through:

auth.uid()
  ->
streaming.auth_civilization_identity_bindings
  ->
streaming.current_civilization_id()

R11 shall not assume:

auth.uid() = civilization_id

Individual channel ownership shall be evaluated by:

channel_owner_civilization_id
=
streaming.current_civilization_id()

Corporate authority remains separate
and is not granted by this executable owner-path freeze.

All unresolved identity states fail closed.
