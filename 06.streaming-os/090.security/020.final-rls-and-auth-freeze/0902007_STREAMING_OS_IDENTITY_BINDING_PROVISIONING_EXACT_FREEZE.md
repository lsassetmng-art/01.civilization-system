# STREAMING OS IDENTITY BINDING PROVISIONING EXACT FREEZE

status: exact-freeze
system: streaming-os
layer: security
domain: auth-to-civilization-identity
owner: Boss

## 1. Purpose

Freeze the trusted provisioning path for:

auth.users.id
->
streaming.auth_civilization_identity_bindings
->
Civilization ID
->
streaming.current_civilization_id()

This document extends:

- 0902005_STREAMING_OS_AUTH_TO_CIVILIZATION_IDENTITY_BRIDGE_FREEZE.md
- 0902006_STREAMING_OS_IDENTITY_BRIDGE_AND_R11_OWNER_RLS_EXECUTABLE_SQL_FREEZE.md

It does not redefine end-user authentication.

## 2. Authority boundary

Identity binding provisioning is not an end-user operation.

Allowed execution authority:

- database migration / administration role
- trusted server runtime using service_role
- future dedicated identity provisioning worker only after explicit authorization design

Denied:

- anon
- authenticated client
- R11 channel owner endpoint
- user supplied actor_civilization_id as authority
- JWT metadata as canonical Civilization identity source
- browser direct table mutation

service_role is a trusted server credential only.

It must never be exposed to browser or mobile client code.

## 3. Canonical source rules

auth_user_id:

- must exist in auth.users.id
- is authentication identity only

civilization_id:

- must be supplied from an already validated Civilization identity source
- must not be inferred from auth.uid()
- must not be inferred from email
- must not be inferred from JWT custom metadata
- must not be inferred from BusinessOS worker identity
- must not be guessed from existing StreamingOS content

The current StreamingOS database does not freeze a local canonical Civilization
subject table suitable for an FK.

Therefore this provisioning layer validates auth_user_id locally but requires
the trusted caller to validate civilization_id before invocation.

## 4. Binding lifecycle

Canonical states:

- active
- revoked

Provision behavior:

no existing binding:
- create active binding
- event = provision

same civilization_id + active:
- no mutation
- result = unchanged

same civilization_id + revoked:
- reactivate
- event = reactivate

different civilization_id + active:
- reject
- result = binding_conflict_active

different civilization_id + revoked:
- explicit rebind is allowed
- replace civilization_id
- state becomes active
- event = rebind

This prevents silent reassignment of an active authentication identity.

## 5. Revocation behavior

Revocation:

- requires existing binding
- active -> revoked
- already revoked -> unchanged
- no binding -> identity_binding_not_found

Revocation does not delete the binding row.

Historical provisioning evidence must remain auditable.

## 6. Concurrency

Provisioning locks the corresponding auth.users row.

This serializes competing provisioning operations for one auth_user_id.

The existing primary key on:

streaming.auth_civilization_identity_bindings.auth_user_id

remains the final uniqueness boundary.

## 7. Audit evidence

Canonical audit table:

streaming.auth_civilization_identity_binding_events

Required evidence:

- binding_event_id
- auth_user_id
- previous_civilization_id
- new_civilization_id
- previous_binding_status
- new_binding_status
- event_type
- provisioning_reason
- database_session_user
- created_at

Event types:

- provision
- reactivate
- rebind
- revoke

Audit rows are append-only through provisioning functions.

No authenticated client write policy is created.

## 8. Trusted SQL interfaces

Canonical functions:

streaming.provision_auth_civilization_identity_binding(
  p_auth_user_id uuid,
  p_civilization_id uuid,
  p_reason text
) returns text

streaming.revoke_auth_civilization_identity_binding(
  p_auth_user_id uuid,
  p_reason text
) returns text

Both functions:

- SECURITY DEFINER
- safe search_path
- validate required inputs
- validate auth.users existence
- serialize on auth.users row
- write audit evidence
- are denied to PUBLIC / anon / authenticated
- are executable by service_role only as the trusted runtime role
- remain executable by their database owner

## 9. Error semantics

Canonical failures:

invalid_auth_user_id
- auth_user_id is null or does not exist in auth.users

invalid_civilization_id
- civilization_id is null

invalid_provisioning_reason
- reason is null or blank

binding_conflict_active
- existing active binding points at another civilization_id

identity_binding_not_found
- revoke requested for a missing binding

No failure path may silently create an inferred Civilization identity.

## 10. R11 integration boundary

R11 Channel Management does not call provisioning functions.

R11 authenticated request flow remains:

Bearer token
->
auth.uid()
->
streaming.current_civilization_id()
->
actor_civilization_id equality check
->
channel authorization

If no active binding exists:

- request fails closed
- R11 must not bootstrap identity implicitly
- trusted provisioning must occur separately

## 11. Provisioning SQL

SQL_BEGIN
begin;

create table streaming.auth_civilization_identity_binding_events (
  binding_event_id bigint generated always as identity primary key,
  auth_user_id uuid not null,
  previous_civilization_id uuid null,
  new_civilization_id uuid null,
  previous_binding_status text null,
  new_binding_status text not null,
  event_type text not null,
  provisioning_reason text not null,
  database_session_user text not null default session_user,
  created_at timestamptz not null default now(),

  constraint ck_streaming_identity_binding_event_previous_status
    check (
      previous_binding_status is null
      or previous_binding_status in ('active', 'revoked')
    ),

  constraint ck_streaming_identity_binding_event_new_status
    check (
      new_binding_status in ('active', 'revoked')
    ),

  constraint ck_streaming_identity_binding_event_type
    check (
      event_type in (
        'provision',
        'reactivate',
        'rebind',
        'revoke'
      )
    ),

  constraint ck_streaming_identity_binding_event_reason
    check (
      length(btrim(provisioning_reason)) > 0
    )
);

alter table streaming.auth_civilization_identity_binding_events
  enable row level security;

revoke all
  on table streaming.auth_civilization_identity_binding_events
  from public, anon, authenticated, service_role;

revoke all
  on table streaming.auth_civilization_identity_bindings
  from service_role;

create function streaming.provision_auth_civilization_identity_binding(
  p_auth_user_id uuid,
  p_civilization_id uuid,
  p_reason text
)
returns text
language plpgsql
security definer
set search_path = pg_catalog
as $function$
declare
  v_previous_civilization_id uuid;
  v_previous_binding_status text;
begin
  if p_auth_user_id is null then
    raise exception 'invalid_auth_user_id';
  end if;

  if p_civilization_id is null then
    raise exception 'invalid_civilization_id';
  end if;

  if p_reason is null or length(btrim(p_reason)) = 0 then
    raise exception 'invalid_provisioning_reason';
  end if;

  perform 1
  from auth.users
  where id = p_auth_user_id
  for update;

  if not found then
    raise exception 'invalid_auth_user_id';
  end if;

  select
    civilization_id,
    binding_status
  into
    v_previous_civilization_id,
    v_previous_binding_status
  from streaming.auth_civilization_identity_bindings
  where auth_user_id = p_auth_user_id
  for update;

  if not found then
    insert into streaming.auth_civilization_identity_bindings (
      auth_user_id,
      civilization_id,
      binding_status,
      created_at,
      updated_at
    )
    values (
      p_auth_user_id,
      p_civilization_id,
      'active',
      now(),
      now()
    );

    insert into streaming.auth_civilization_identity_binding_events (
      auth_user_id,
      previous_civilization_id,
      new_civilization_id,
      previous_binding_status,
      new_binding_status,
      event_type,
      provisioning_reason
    )
    values (
      p_auth_user_id,
      null,
      p_civilization_id,
      null,
      'active',
      'provision',
      p_reason
    );

    return 'provisioned';
  end if;

  if v_previous_civilization_id = p_civilization_id
     and v_previous_binding_status = 'active' then
    return 'unchanged';
  end if;

  if v_previous_civilization_id = p_civilization_id
     and v_previous_binding_status = 'revoked' then

    update streaming.auth_civilization_identity_bindings
    set
      binding_status = 'active',
      updated_at = now()
    where auth_user_id = p_auth_user_id;

    insert into streaming.auth_civilization_identity_binding_events (
      auth_user_id,
      previous_civilization_id,
      new_civilization_id,
      previous_binding_status,
      new_binding_status,
      event_type,
      provisioning_reason
    )
    values (
      p_auth_user_id,
      v_previous_civilization_id,
      p_civilization_id,
      'revoked',
      'active',
      'reactivate',
      p_reason
    );

    return 'reactivated';
  end if;

  if v_previous_civilization_id <> p_civilization_id
     and v_previous_binding_status = 'active' then
    raise exception 'binding_conflict_active';
  end if;

  if v_previous_civilization_id <> p_civilization_id
     and v_previous_binding_status = 'revoked' then

    update streaming.auth_civilization_identity_bindings
    set
      civilization_id = p_civilization_id,
      binding_status = 'active',
      updated_at = now()
    where auth_user_id = p_auth_user_id;

    insert into streaming.auth_civilization_identity_binding_events (
      auth_user_id,
      previous_civilization_id,
      new_civilization_id,
      previous_binding_status,
      new_binding_status,
      event_type,
      provisioning_reason
    )
    values (
      p_auth_user_id,
      v_previous_civilization_id,
      p_civilization_id,
      'revoked',
      'active',
      'rebind',
      p_reason
    );

    return 'rebound';
  end if;

  raise exception 'identity_binding_state_invalid';
end;
$function$;

create function streaming.revoke_auth_civilization_identity_binding(
  p_auth_user_id uuid,
  p_reason text
)
returns text
language plpgsql
security definer
set search_path = pg_catalog
as $function$
declare
  v_civilization_id uuid;
  v_binding_status text;
begin
  if p_auth_user_id is null then
    raise exception 'invalid_auth_user_id';
  end if;

  if p_reason is null or length(btrim(p_reason)) = 0 then
    raise exception 'invalid_provisioning_reason';
  end if;

  perform 1
  from auth.users
  where id = p_auth_user_id
  for update;

  if not found then
    raise exception 'invalid_auth_user_id';
  end if;

  select
    civilization_id,
    binding_status
  into
    v_civilization_id,
    v_binding_status
  from streaming.auth_civilization_identity_bindings
  where auth_user_id = p_auth_user_id
  for update;

  if not found then
    raise exception 'identity_binding_not_found';
  end if;

  if v_binding_status = 'revoked' then
    return 'unchanged';
  end if;

  update streaming.auth_civilization_identity_bindings
  set
    binding_status = 'revoked',
    updated_at = now()
  where auth_user_id = p_auth_user_id;

  insert into streaming.auth_civilization_identity_binding_events (
    auth_user_id,
    previous_civilization_id,
    new_civilization_id,
    previous_binding_status,
    new_binding_status,
    event_type,
    provisioning_reason
  )
  values (
    p_auth_user_id,
    v_civilization_id,
    v_civilization_id,
    'active',
    'revoked',
    'revoke',
    p_reason
  );

  return 'revoked';
end;
$function$;

revoke all
  on function streaming.provision_auth_civilization_identity_binding(
    uuid,
    uuid,
    text
  )
  from public, anon, authenticated;

revoke all
  on function streaming.revoke_auth_civilization_identity_binding(
    uuid,
    text
  )
  from public, anon, authenticated;

grant usage
  on schema streaming
  to service_role;

grant execute
  on function streaming.provision_auth_civilization_identity_binding(
    uuid,
    uuid,
    text
  )
  to service_role;

grant execute
  on function streaming.revoke_auth_civilization_identity_binding(
    uuid,
    text
  )
  to service_role;

commit;
SQL_END

## 12. Data mutation boundary

This design does not provision any real identity.

No auth_user_id value is frozen here.

No civilization_id value is frozen here.

Applying the SQL creates only:

- provisioning audit structure
- controlled provisioning functions
- privilege boundaries

Actual binding creation requires a separate explicit data mutation GO.

## 13. Fixed statement

Authentication identity and Civilization identity remain separate namespaces.

A binding may be created only by an explicitly trusted provisioning authority.

R11 and other end-user StreamingOS flows must fail closed when no active binding
exists and must never silently create one.
