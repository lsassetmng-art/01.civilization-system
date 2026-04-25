begin;

create or replace function aiworker.fn_validate_payload_command_row_v1(
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_keys(
    p_payload,
    array[
      'payload_version',
      'command_type',
      'source_system',
      'source_actor_type',
      'requested_lane',
      'request_context',
      'idempotency',
      'requested_at',
      'requested_by'
    ]
  );

  perform aiworker.fn_payload_require_string_value(p_payload, 'payload_version', '1.0');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'idempotency', 'request_hash');

  return true;
end;
$$;

create or replace function aiworker.fn_validate_payload_draft_row_v1(
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_keys(
    p_payload,
    array[
      'payload_version',
      'draft_type',
      'proposal_summary',
      'proposal_details',
      'source_command_ref',
      'created_at'
    ]
  );

  perform aiworker.fn_payload_require_string_value(p_payload, 'payload_version', '1.0');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'source_command_ref', 'command_id');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'source_command_ref', 'request_hash');

  return true;
end;
$$;

create or replace function aiworker.fn_validate_payload_staging_row_v1(
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_keys(
    p_payload,
    array[
      'payload_version',
      'staging_type',
      'controlled_function_code',
      'target_truth_surface',
      'state_family_code',
      'normalized_candidate',
      'gate_context',
      'source_refs',
      'created_at'
    ]
  );

  perform aiworker.fn_payload_require_string_value(p_payload, 'payload_version', '1.0');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'gate_context', 'gate_code');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'source_refs', 'request_hash');

  return true;
end;
$$;

create or replace function aiworker.fn_validate_payload_official_intake_v1(
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_keys(
    p_payload,
    array[
      'payload_version',
      'intake_type',
      'controlled_function_code',
      'target_truth_surface',
      'gate_code',
      'execution_candidate',
      'correlation',
      'submitted_at',
      'submitted_by'
    ]
  );

  perform aiworker.fn_payload_require_string_value(p_payload, 'payload_version', '1.0');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'correlation', 'staging_id');
  perform aiworker.fn_payload_require_nested_object_key(p_payload, 'correlation', 'request_hash');

  return true;
end;
$$;

create or replace function aiworker.fn_validate_payload_result_event_v1(
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_keys(
    p_payload,
    array[
      'payload_version',
      'event_type',
      'event_id',
      'aiworker_status_code',
      'result_code',
      'result_summary_code',
      'summary_payload',
      'emitted_at'
    ]
  );

  perform aiworker.fn_payload_require_string_value(p_payload, 'payload_version', '1.0');

  return true;
end;
$$;

create or replace function aiworker.fn_validate_payload_business_request_event_v1(
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  perform aiworker.fn_payload_require_keys(
    p_payload,
    array[
      'event_type',
      'event_version',
      'business_request_id',
      'tenant_company_id',
      'requested_domain',
      'requested_role',
      'requested_lane',
      'requested_app_scope',
      'priority_band',
      'request_created_at',
      'request_payload'
    ]
  );

  perform aiworker.fn_payload_require_string_value(p_payload, 'event_version', '1.0');

  return true;
end;
$$;

create or replace function aiworker.fn_validate_payload_by_schema_name(
  p_payload_schema_name text,
  p_payload jsonb
)
returns boolean
language plpgsql
as $$
begin
  if not aiworker.fn_payload_schema_is_active(p_payload_schema_name) then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;

  case p_payload_schema_name
    when 'PAYLOAD_COMMAND_ROW_V1' then
      return aiworker.fn_validate_payload_command_row_v1(p_payload);

    when 'PAYLOAD_DRAFT_ROW_V1' then
      return aiworker.fn_validate_payload_draft_row_v1(p_payload);

    when 'PAYLOAD_STAGING_ROW_V1' then
      return aiworker.fn_validate_payload_staging_row_v1(p_payload);

    when 'PAYLOAD_OFFICIAL_INTAKE_V1' then
      return aiworker.fn_validate_payload_official_intake_v1(p_payload);

    when 'PAYLOAD_RESULT_EVENT_V1' then
      return aiworker.fn_validate_payload_result_event_v1(p_payload);

    when 'PAYLOAD_BUSINESS_REQUEST_EVENT_V1' then
      return aiworker.fn_validate_payload_business_request_event_v1(p_payload);

    else
      perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
      return false;
  end case;
end;
$$;

create or replace function aiworker.fn_store_payload_document(
  p_payload_ref text,
  p_payload_schema_name text,
  p_payload_json jsonb
)
returns void
language plpgsql
as $$
begin
  if coalesce(p_payload_ref, '') = '' then
    perform aiworker.fn_payload_raise_invalid('ERR_PAYLOAD_INVALID');
  end if;

  perform aiworker.fn_validate_payload_by_schema_name(
    p_payload_schema_name,
    p_payload_json
  );

  insert into aiworker.payload_document (
    payload_ref,
    payload_schema_name,
    payload_json,
    payload_hash,
    created_at,
    updated_at
  )
  values (
    p_payload_ref,
    p_payload_schema_name,
    p_payload_json,
    md5(p_payload_json::text),
    now(),
    now()
  )
  on conflict (payload_ref) do update
    set payload_schema_name = excluded.payload_schema_name,
        payload_json = excluded.payload_json,
        payload_hash = excluded.payload_hash,
        updated_at = now();

  perform aiworker.fn_payload_validation_log_write(
    p_payload_ref,
    p_payload_schema_name,
    'OK_VALID',
    null
  );
exception
  when others then
    perform aiworker.fn_payload_validation_log_write(
      p_payload_ref,
      coalesce(p_payload_schema_name, 'UNKNOWN'),
      'NG_INVALID',
      SQLERRM
    );
    raise;
end;
$$;

commit;
