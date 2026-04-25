begin;

create or replace function aiworker.fn_jsonb_has_all_string_keys(
  p_payload jsonb,
  p_required_keys jsonb
)
returns boolean
language plpgsql
as $$
declare
  v_key text;
begin
  if p_payload is null or jsonb_typeof(p_payload) <> 'object' then
    return false;
  end if;

  if p_required_keys is null or jsonb_typeof(p_required_keys) <> 'array' then
    return false;
  end if;

  for v_key in
    select jsonb_array_elements_text(p_required_keys)
  loop
    if not (p_payload ? v_key) then
      return false;
    end if;
  end loop;

  return true;
end;
$$;

create or replace function aiworker.fn_log_business_event_validation(
  p_contract_code text,
  p_direction_code text,
  p_event_type text,
  p_validation_result_code text,
  p_related_business_request_id uuid,
  p_payload_ref text,
  p_note_text text,
  p_validated_by text
)
returns bigint
language plpgsql
as $$
declare
  v_id bigint;
begin
  insert into aiworker.business_event_validation_log (
    contract_code,
    direction_code,
    event_type,
    validation_result_code,
    related_business_request_id,
    payload_ref,
    note_text,
    validated_at,
    validated_by
  )
  values (
    p_contract_code,
    p_direction_code,
    p_event_type,
    p_validation_result_code,
    p_related_business_request_id,
    p_payload_ref,
    p_note_text,
    now(),
    coalesce(p_validated_by, 'SYSTEM')
  )
  returning business_event_validation_log_id into v_id;

  return v_id;
end;
$$;

create or replace function aiworker.fn_log_business_cross_boundary_smoke(
  p_flow_code text,
  p_result_code text,
  p_note_text text,
  p_executed_by text
)
returns bigint
language plpgsql
as $$
declare
  v_id bigint;
begin
  insert into aiworker.business_cross_boundary_smoke_log (
    flow_code,
    result_code,
    note_text,
    executed_at,
    executed_by
  )
  values (
    p_flow_code,
    p_result_code,
    p_note_text,
    now(),
    coalesce(p_executed_by, 'SYSTEM')
  )
  returning business_cross_boundary_smoke_log_id into v_id;

  return v_id;
end;
$$;

create or replace function aiworker.fn_validate_business_contract_payload(
  p_contract_code text,
  p_payload_ref text,
  p_payload_json jsonb,
  p_related_business_request_id uuid,
  p_validated_by text
)
returns table (
  success_flag boolean,
  validation_result_code text,
  note_text text
)
language plpgsql
as $$
declare
  v_contract aiworker.business_event_contract_registry;
begin
  select *
    into v_contract
    from aiworker.business_event_contract_registry
   where contract_code = p_contract_code
     and active_flag = true;

  if not found then
    perform aiworker.fn_log_business_event_validation(
      p_contract_code,
      null,
      null,
      'NG_CONTRACT_NOT_FOUND',
      p_related_business_request_id,
      p_payload_ref,
      'Contract not found',
      coalesce(p_validated_by, 'SYSTEM')
    );

    return query
    select false, 'NG_CONTRACT_NOT_FOUND', 'Contract not found';
    return;
  end if;

  perform aiworker.fn_validate_payload_by_schema_name(
    v_contract.payload_schema_name,
    p_payload_json
  );

  if not aiworker.fn_jsonb_has_all_string_keys(
    p_payload_json,
    v_contract.required_top_level_keys
  ) then
    perform aiworker.fn_log_business_event_validation(
      p_contract_code,
      v_contract.direction_code,
      v_contract.event_type,
      'NG_REQUIRED_KEY_MISSING',
      p_related_business_request_id,
      p_payload_ref,
      'Required top-level key missing',
      coalesce(p_validated_by, 'SYSTEM')
    );

    return query
    select false, 'NG_REQUIRED_KEY_MISSING', 'Required top-level key missing';
    return;
  end if;

  if coalesce(p_payload_json ->> 'event_type', '') <> v_contract.event_type then
    perform aiworker.fn_log_business_event_validation(
      p_contract_code,
      v_contract.direction_code,
      v_contract.event_type,
      'NG_EVENT_TYPE_MISMATCH',
      p_related_business_request_id,
      p_payload_ref,
      'Event type mismatch',
      coalesce(p_validated_by, 'SYSTEM')
    );

    return query
    select false, 'NG_EVENT_TYPE_MISMATCH', 'Event type mismatch';
    return;
  end if;

  perform aiworker.fn_log_business_event_validation(
    p_contract_code,
    v_contract.direction_code,
    v_contract.event_type,
    'OK_VALID',
    p_related_business_request_id,
    p_payload_ref,
    null,
    coalesce(p_validated_by, 'SYSTEM')
  );

  return query
  select true, 'OK_VALID', 'Valid';
exception
  when others then
    perform aiworker.fn_log_business_event_validation(
      p_contract_code,
      null,
      null,
      'NG_INVALID',
      p_related_business_request_id,
      p_payload_ref,
      SQLERRM,
      coalesce(p_validated_by, 'SYSTEM')
    );

    return query
    select false, 'NG_INVALID', SQLERRM;
end;
$$;

create or replace function aiworker.fn_validate_business_contract_payload_ref(
  p_contract_code text,
  p_payload_ref text,
  p_validated_by text
)
returns table (
  success_flag boolean,
  validation_result_code text,
  note_text text
)
language plpgsql
as $$
declare
  v_payload aiworker.payload_document;
  v_related_business_request_id uuid;
begin
  select *
    into v_payload
    from aiworker.payload_document
   where payload_ref = p_payload_ref;

  if not found then
    return query
    select false, 'NG_PAYLOAD_NOT_FOUND', 'Payload ref not found';
    return;
  end if;

  begin
    v_related_business_request_id := nullif(v_payload.payload_json ->> 'business_request_id', '')::uuid;
  exception
    when others then
      v_related_business_request_id := null;
  end;

  if v_related_business_request_id is null then
    begin
      v_related_business_request_id := nullif(v_payload.payload_json ->> 'related_business_request_id', '')::uuid;
    exception
      when others then
        v_related_business_request_id := null;
    end;
  end if;

  return query
  select *
    from aiworker.fn_validate_business_contract_payload(
      p_contract_code,
      p_payload_ref,
      v_payload.payload_json,
      v_related_business_request_id,
      coalesce(p_validated_by, 'SYSTEM')
    );
end;
$$;

commit;
