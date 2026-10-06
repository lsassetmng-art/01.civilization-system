# ============================================================
# STREAMING OS R11 CHANNEL ATOMIC UPSERT RPC
# AND IDEMPOTENCY EXACT DESIGN
# ============================================================

status: canonical-freeze-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# 1. PURPOSE

R11 Channel Management upsert shall persist:

- streaming.channel_records
- streaming.channel_profile_states

as one atomic database mutation.

This design extends:
- 1202008 channel exact contract
- 1202012 idempotency exact rule
- 1202014 R11 transport binding
- 0902005 identity bridge
- 0902006 owner RLS

# 2. RPC

canonical_rpc:
- streaming.upsert_channel_record

execution:
- PostgreSQL PL/pgSQL
- one transaction
- SECURITY DEFINER
- search_path = pg_catalog
- authenticated execute only
- no service_role end-user identity

identity_flow:
- authenticated JWT context
- streaming.current_civilization_id()
- resolved Civilization ID
- actor_civilization_id equality check
- owner authorization

# 3. INPUT

parameters:
- p_actor_civilization_id uuid
- p_channel_record_id uuid nullable
- p_channel_display_name text
- p_channel_status text
- p_official_channel_flag boolean
- p_profile_description text nullable
- p_artwork_reference text nullable
- p_visibility_setting text
- p_idempotency_key text nullable

channel_status:
- active
- restricted
- suspended
- archived

visibility_setting:
- public
- limited
- restricted

create_rule:
- null channel_record_id creates server-generated UUID

update_rule:
- non-null channel_record_id must already exist
- existing owner must equal resolved Civilization ID

# 4. OUTPUT

result:
- channel_record_id
- channel_profile_state_id
- channel_status
- updated_at
- idempotency_replayed

transport_data:
- channel_record_id
- channel_profile_state_id
- channel_status
- updated_at

transport_meta:
- idempotency_replayed
- canonical_result_reference = channel:<channel_record_id>

# 5. IDEMPOTENCY

table:
- streaming.channel_upsert_idempotency_records

scope:
- actor_civilization_id
- endpoint_key
- idempotency_key

endpoint_key:
- upsert_channel_record

same actor + endpoint + key + same normalized semantic body:
- return original successful canonical result
- no duplicate side effect

same actor + endpoint + key + conflicting semantic body:
- state_conflict

null idempotency_key:
- mutation remains atomic
- replay record is not created

The idempotency table:
- has RLS enabled
- has no client policy
- has direct privileges revoked
- is internal to the RPC

# 6. AUTHORIZATION

create:
- channel owner is always the resolved Civilization ID

update:
- missing target -> target_not_found
- different owner -> forbidden_action

R11 does not implement:
- company_official_manager mutation
- platform_operator override
- affiliation-derived mutation authority

# 7. ERRORS

tokens:
- unauthorized_actor
- missing_required_field
- unsupported_value
- invalid_field
- target_not_found
- forbidden_action
- state_conflict
- retry_later

# 8. EXECUTABLE SQL

SQL_BEGIN

create table if not exists streaming.channel_upsert_idempotency_records (
  channel_upsert_idempotency_record_id uuid primary key,
  actor_civilization_id uuid not null,
  endpoint_key text not null,
  idempotency_key text not null,
  semantic_body jsonb not null,
  result_state text not null,

  channel_record_id uuid null,
  channel_profile_state_id uuid null,
  channel_status text null,
  result_updated_at timestamptz null,

  created_at timestamptz not null default now(),
  completed_at timestamptz null,

  constraint ck_channel_upsert_idem_endpoint
    check (endpoint_key = 'upsert_channel_record'),

  constraint ck_channel_upsert_idem_state
    check (result_state in ('in_progress', 'completed')),

  constraint ck_channel_upsert_idem_completed
    check (
      result_state <> 'completed'
      or (
        channel_record_id is not null
        and channel_profile_state_id is not null
        and channel_status is not null
        and result_updated_at is not null
        and completed_at is not null
      )
    ),

  constraint uq_channel_upsert_idem_scope
    unique (
      actor_civilization_id,
      endpoint_key,
      idempotency_key
    ),

  constraint fk_channel_upsert_idem_channel
    foreign key (channel_record_id)
    references streaming.channel_records (channel_record_id)
    on update cascade
    on delete restrict,

  constraint fk_channel_upsert_idem_profile
    foreign key (channel_profile_state_id)
    references streaming.channel_profile_states (channel_profile_state_id)
    on update cascade
    on delete restrict
);

alter table streaming.channel_upsert_idempotency_records
  enable row level security;

revoke all
on table streaming.channel_upsert_idempotency_records
from PUBLIC, anon, authenticated, service_role;


create or replace function streaming.upsert_channel_record(
  p_actor_civilization_id uuid,
  p_channel_record_id uuid,
  p_channel_display_name text,
  p_channel_status text,
  p_official_channel_flag boolean,
  p_profile_description text,
  p_artwork_reference text,
  p_visibility_setting text,
  p_idempotency_key text
)
returns table (
  channel_record_id uuid,
  channel_profile_state_id uuid,
  channel_status text,
  updated_at timestamptz,
  idempotency_replayed boolean
)
language plpgsql
security definer
set search_path = pg_catalog
as $function$
declare
  v_actor uuid;
  v_endpoint constant text := 'upsert_channel_record';

  v_display_name text;
  v_profile_description text;
  v_artwork_reference text;
  v_idempotency_key text;

  v_semantic_body jsonb;

  v_existing_semantic_body jsonb;
  v_existing_state text;
  v_existing_channel_id uuid;
  v_existing_profile_id uuid;
  v_existing_status text;
  v_existing_updated_at timestamptz;

  v_owner uuid;
  v_channel_id uuid;
  v_profile_id uuid;
  v_now timestamptz;

  v_inserted integer := 0;
begin

  if p_actor_civilization_id is null then
    raise exception using
      errcode = 'P0001',
      message = 'unauthorized_actor';
  end if;

  v_actor := streaming.current_civilization_id();

  if v_actor is null
     or v_actor <> p_actor_civilization_id then
    raise exception using
      errcode = 'P0001',
      message = 'unauthorized_actor';
  end if;

  if p_channel_display_name is null
     or pg_catalog.btrim(p_channel_display_name) = '' then
    raise exception using
      errcode = 'P0001',
      message = 'missing_required_field';
  end if;

  if p_channel_status is null
     or p_channel_status not in (
       'active',
       'restricted',
       'suspended',
       'archived'
     ) then
    raise exception using
      errcode = 'P0001',
      message = 'unsupported_value';
  end if;

  if p_official_channel_flag is null then
    raise exception using
      errcode = 'P0001',
      message = 'missing_required_field';
  end if;

  if p_visibility_setting is null
     or p_visibility_setting not in (
       'public',
       'limited',
       'restricted'
     ) then
    raise exception using
      errcode = 'P0001',
      message = 'unsupported_value';
  end if;

  v_display_name :=
    pg_catalog.btrim(p_channel_display_name);

  v_profile_description :=
    nullif(pg_catalog.btrim(p_profile_description), '');

  v_artwork_reference :=
    nullif(pg_catalog.btrim(p_artwork_reference), '');

  if p_idempotency_key is null then
    v_idempotency_key := null;
  else
    v_idempotency_key :=
      pg_catalog.btrim(p_idempotency_key);

    if v_idempotency_key = ''
       or pg_catalog.char_length(v_idempotency_key) > 200 then
      raise exception using
        errcode = 'P0001',
        message = 'invalid_field';
    end if;
  end if;

  v_semantic_body :=
    pg_catalog.jsonb_build_object(
      'channel_record_id',
      p_channel_record_id,

      'channel_display_name',
      v_display_name,

      'channel_status',
      p_channel_status,

      'official_channel_flag',
      p_official_channel_flag,

      'profile_description',
      v_profile_description,

      'artwork_reference',
      v_artwork_reference,

      'visibility_setting',
      p_visibility_setting
    );

  if v_idempotency_key is not null then

    insert into streaming.channel_upsert_idempotency_records (
      channel_upsert_idempotency_record_id,
      actor_civilization_id,
      endpoint_key,
      idempotency_key,
      semantic_body,
      result_state
    )
    values (
      pg_catalog.gen_random_uuid(),
      v_actor,
      v_endpoint,
      v_idempotency_key,
      v_semantic_body,
      'in_progress'
    )
    on conflict (
      actor_civilization_id,
      endpoint_key,
      idempotency_key
    )
    do nothing;

    get diagnostics v_inserted = row_count;

    if v_inserted = 0 then

      select
        i.semantic_body,
        i.result_state,
        i.channel_record_id,
        i.channel_profile_state_id,
        i.channel_status,
        i.result_updated_at
      into
        v_existing_semantic_body,
        v_existing_state,
        v_existing_channel_id,
        v_existing_profile_id,
        v_existing_status,
        v_existing_updated_at
      from streaming.channel_upsert_idempotency_records as i
      where i.actor_civilization_id = v_actor
        and i.endpoint_key = v_endpoint
        and i.idempotency_key = v_idempotency_key
      for update;

      if v_existing_semantic_body
         is distinct from v_semantic_body then
        raise exception using
          errcode = 'P0001',
          message = 'state_conflict';
      end if;

      if v_existing_state <> 'completed' then
        raise exception using
          errcode = 'P0001',
          message = 'retry_later';
      end if;

      return query
      select
        v_existing_channel_id,
        v_existing_profile_id,
        v_existing_status,
        v_existing_updated_at,
        true;

      return;
    end if;
  end if;

  v_now := pg_catalog.clock_timestamp();

  if p_channel_record_id is null then

    v_channel_id := pg_catalog.gen_random_uuid();

    insert into streaming.channel_records (
      channel_record_id,
      channel_owner_civilization_id,
      channel_display_name,
      channel_status,
      official_channel_flag,
      created_at,
      updated_at
    )
    values (
      v_channel_id,
      v_actor,
      v_display_name,
      p_channel_status,
      p_official_channel_flag,
      v_now,
      v_now
    );

  else

    select c.channel_owner_civilization_id
    into v_owner
    from streaming.channel_records as c
    where c.channel_record_id = p_channel_record_id
    for update;

    if not found then
      raise exception using
        errcode = 'P0001',
        message = 'target_not_found';
    end if;

    if v_owner <> v_actor then
      raise exception using
        errcode = 'P0001',
        message = 'forbidden_action';
    end if;

    v_channel_id := p_channel_record_id;

    update streaming.channel_records as c
    set
      channel_display_name = v_display_name,
      channel_status = p_channel_status,
      official_channel_flag = p_official_channel_flag,
      updated_at = v_now
    where c.channel_record_id = v_channel_id;

  end if;

  select p.channel_profile_state_id
  into v_profile_id
  from streaming.channel_profile_states as p
  where p.channel_record_id = v_channel_id
  for update;

  if not found then

    v_profile_id := pg_catalog.gen_random_uuid();

    insert into streaming.channel_profile_states (
      channel_profile_state_id,
      channel_record_id,
      profile_description,
      artwork_reference,
      visibility_setting,
      updated_at
    )
    values (
      v_profile_id,
      v_channel_id,
      v_profile_description,
      v_artwork_reference,
      p_visibility_setting,
      v_now
    );

  else

    update streaming.channel_profile_states as p
    set
      profile_description = v_profile_description,
      artwork_reference = v_artwork_reference,
      visibility_setting = p_visibility_setting,
      updated_at = v_now
    where p.channel_profile_state_id = v_profile_id;

  end if;

  if v_idempotency_key is not null then

    update streaming.channel_upsert_idempotency_records as i
    set
      result_state = 'completed',
      channel_record_id = v_channel_id,
      channel_profile_state_id = v_profile_id,
      channel_status = p_channel_status,
      result_updated_at = v_now,
      completed_at = v_now
    where i.actor_civilization_id = v_actor
      and i.endpoint_key = v_endpoint
      and i.idempotency_key = v_idempotency_key;

  end if;

  return query
  select
    v_channel_id,
    v_profile_id,
    p_channel_status,
    v_now,
    false;

end;
$function$;


revoke all
on function streaming.upsert_channel_record(
  uuid,
  uuid,
  text,
  text,
  boolean,
  text,
  text,
  text,
  text
)
from PUBLIC, anon, authenticated, service_role;


grant usage on schema streaming
to authenticated;


grant execute
on function streaming.upsert_channel_record(
  uuid,
  uuid,
  text,
  text,
  boolean,
  text,
  text,
  text,
  text
)
to authenticated;

SQL_END

# 9. SOURCE BINDING

R11 repository shall:
- call streaming.upsert_channel_record
- use request-scoped authenticated Supabase client
- pass null when idempotency_key is absent

R11 repository shall not:
- implement the two-table transaction in TypeScript
- use service_role as end-user identity
- write the idempotency table directly
- auto-provision an identity binding

# 10. FIXED STATEMENT

R11 Channel Management create/update is atomic at the
database boundary.

Replay safety is scoped by:
- canonical Civilization actor
- endpoint
- idempotency key
- normalized semantic body

Successful replay returns the original canonical result
without duplicate side effects.
