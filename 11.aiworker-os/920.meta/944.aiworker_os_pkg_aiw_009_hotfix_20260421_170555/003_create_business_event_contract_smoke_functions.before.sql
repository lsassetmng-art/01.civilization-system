begin;

create or replace function aiworker.fn_seed_business_event_contract_smoke_payloads()
returns void
language plpgsql
as $$
begin
  perform aiworker.fn_store_payload_document(
    'SMOKE_BUSINESS_REQUEST_EVENT_V1',
    'PAYLOAD_BUSINESS_REQUEST_EVENT_V1',
    jsonb_build_object(
      'event_type', 'BUSINESS_REQUEST_EVENT',
      'event_version', '1.0',
      'business_request_id', '71000000-0000-0000-0000-000000003001',
      'tenant_company_id', '71000000-0000-0000-0000-000000000101',
      'requested_domain', 'operations',
      'requested_role', 'operations_assistant',
      'requested_lane', 'OFFICIAL_REQUEST',
      'requested_app_scope', 'aiworker_smoke_scope',
      'priority_band', 'STANDARD',
      'request_created_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF'),
      'request_payload', jsonb_build_object(
        'requested_transition_code', 'ASSIGNED',
        'worker_id', '71000000-0000-0000-0000-000000001001'
      )
    )
  );

  perform aiworker.fn_store_payload_document(
    'SMOKE_AIWORKER_RESULT_EVENT_V1',
    'PAYLOAD_RESULT_EVENT_V1',
    jsonb_build_object(
      'payload_version', '1.0',
      'event_type', 'AIWORKER_RESULT_EVENT',
      'event_id', '71000000-0000-0000-0000-000000004001',
      'related_business_request_id', '71000000-0000-0000-0000-000000003001',
      'aiworker_status_code', 'APPLIED',
      'result_code', 'OK_APPLIED',
      'result_summary_code', 'SUM_APPLIED',
      'summary_payload', jsonb_build_object(
        'worker_id', '71000000-0000-0000-0000-000000001001',
        'state_family_code', 'ASSIGNMENT',
        'new_state_code', 'ASSIGNED'
      ),
      'emitted_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF')
    )
  );
end;
$$;

create or replace function aiworker.fn_run_business_event_contract_smoke(
  p_executed_by text
)
returns table (
  flow_code text,
  result_code text,
  note_text text
)
language plpgsql
as $$
declare
  v_inbound_success boolean;
  v_inbound_code text;
  v_inbound_note text;
  v_outbound_success boolean;
  v_outbound_code text;
  v_outbound_note text;
begin
  perform aiworker.fn_seed_business_event_contract_smoke_payloads();

  select success_flag, validation_result_code, note_text
    into v_inbound_success, v_inbound_code, v_inbound_note
    from aiworker.fn_validate_business_contract_payload_ref(
      'BIZ_INBOUND_REQUEST_EVENT_V1',
      'SMOKE_BUSINESS_REQUEST_EVENT_V1',
      coalesce(p_executed_by, 'SYSTEM')
    );

  perform aiworker.fn_log_business_cross_boundary_smoke(
    'BIZ_INBOUND_REQUEST_EVENT_SMOKE',
    case when v_inbound_success then 'PASS' else 'FAIL' end,
    coalesce(v_inbound_code, v_inbound_note),
    coalesce(p_executed_by, 'SYSTEM')
  );

  select success_flag, validation_result_code, note_text
    into v_outbound_success, v_outbound_code, v_outbound_note
    from aiworker.fn_validate_business_contract_payload_ref(
      'AIW_OUTBOUND_RESULT_EVENT_V1',
      'SMOKE_AIWORKER_RESULT_EVENT_V1',
      coalesce(p_executed_by, 'SYSTEM')
    );

  perform aiworker.fn_log_business_cross_boundary_smoke(
    'AIW_OUTBOUND_RESULT_EVENT_SMOKE',
    case when v_outbound_success then 'PASS' else 'FAIL' end,
    coalesce(v_outbound_code, v_outbound_note),
    coalesce(p_executed_by, 'SYSTEM')
  );

  perform aiworker.fn_log_business_cross_boundary_smoke(
    'BUSINESS_EVENT_CONTRACT_SMOKE_OVERALL',
    case when v_inbound_success and v_outbound_success then 'PASS' else 'FAIL' end,
    case
      when v_inbound_success and v_outbound_success then 'Both inbound and outbound contract validation passed'
      else 'One or more contract validations failed'
    end,
    coalesce(p_executed_by, 'SYSTEM')
  );

  return query
  values
    ('BIZ_INBOUND_REQUEST_EVENT_SMOKE', case when v_inbound_success then 'PASS' else 'FAIL' end, coalesce(v_inbound_code, v_inbound_note)),
    ('AIW_OUTBOUND_RESULT_EVENT_SMOKE', case when v_outbound_success then 'PASS' else 'FAIL' end, coalesce(v_outbound_code, v_outbound_note)),
    ('BUSINESS_EVENT_CONTRACT_SMOKE_OVERALL', case when v_inbound_success and v_outbound_success then 'PASS' else 'FAIL' end,
      case
        when v_inbound_success and v_outbound_success then 'Both inbound and outbound contract validation passed'
        else 'One or more contract validations failed'
      end);
end;
$$;

commit;
