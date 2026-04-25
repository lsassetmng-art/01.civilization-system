begin;

select aiworker.fn_store_payload_document(
  'SMOKE_PRIV_COMMAND_V1',
  'PAYLOAD_COMMAND_ROW_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'command_type', 'PRIVILEGED_CONTEXT_CHANGE',
    'source_system', 'aiworker_smoke',
    'source_actor_type', 'SYSTEM',
    'requested_lane', 'OFFICIAL_REQUEST',
    'requested_domain', 'operations',
    'requested_role', 'privileged_support',
    'target_worker_id', '71000000-0000-0000-0000-000000001002',
    'tenant_company_id', '71000000-0000-0000-0000-000000000101',
    'tenant_user_id', '71000000-0000-0000-0000-000000000201',
    'app_scope_code', 'aiworker_smoke_scope',
    'business_request_id', '72000000-0000-0000-0000-000000003001',
    'reason_code', 'SMOKE_PRIVILEGED_CONTEXT',
    'requested_transition_code', 'ACTIVATE',
    'request_context', jsonb_build_object(
      'intent_code', 'SMOKE_PRIVILEGED_CONTEXT_CHANGE',
      'note_text', 'Smoke privileged context command',
      'source_reference_id', 'SMOKE-PRIV-CMD-001'
    ),
    'idempotency', jsonb_build_object(
      'request_hash', 'smoke-privileged-request-hash-001',
      'client_request_id', 'smoke-privileged-client-request-001'
    ),
    'requested_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF'),
    'requested_by', 'SMOKE_SYSTEM'
  )
);

select aiworker.fn_store_payload_document(
  'SMOKE_PRIV_DRAFT_V1',
  'PAYLOAD_DRAFT_ROW_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'draft_type', 'PRIVILEGED_CONTEXT_DRAFT',
    'worker_id', '71000000-0000-0000-0000-000000001002',
    'business_request_id', '72000000-0000-0000-0000-000000003001',
    'proposed_state_family_code', 'PRIVILEGED_CONTEXT',
    'proposed_transition_code', 'ACTIVATE',
    'proposal_summary', jsonb_build_object(
      'headline', 'Smoke privileged context draft',
      'summary_code', 'SUM_APPLIED',
      'reason_code', 'SMOKE_PRIVILEGED_CONTEXT'
    ),
    'proposal_details', jsonb_build_object(
      'candidate_values', jsonb_build_object(
        'privileged_context_code', 'SMOKE_PRIV_CONTEXT',
        'active_flag', true
      ),
      'human_review_points', jsonb_build_array('Smoke privileged review point'),
      'risk_flags', jsonb_build_array()
    ),
    'source_command_ref', jsonb_build_object(
      'command_id', '72000000-0000-0000-0000-000000003101',
      'request_hash', 'smoke-privileged-request-hash-001'
    ),
    'created_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF')
  )
);

select aiworker.fn_store_payload_document(
  'SMOKE_PRIV_STAGING_V1',
  'PAYLOAD_STAGING_ROW_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'staging_type', 'PRIVILEGED_CONTEXT_STAGING',
    'controlled_function_code', 'aiworker.fn_apply_worker_privileged_context_change',
    'target_truth_surface', 'aiworker.worker_privileged_profile',
    'worker_id', '71000000-0000-0000-0000-000000001002',
    'business_request_id', '72000000-0000-0000-0000-000000003001',
    'state_family_code', 'PRIVILEGED_CONTEXT',
    'requested_transition_code', 'ACTIVATE',
    'normalized_candidate', jsonb_build_object(
      'target_key', jsonb_build_object('worker_id', '71000000-0000-0000-0000-000000001002'),
      'new_values', jsonb_build_object(
        'privileged_context_code', 'SMOKE_PRIV_CONTEXT',
        'active_flag', true
      ),
      'event_required', true
    ),
    'gate_context', jsonb_build_object(
      'gate_code', 'GATE_PRIVILEGED',
      'approval_required_flag', false,
      'audit_required_flag', false,
      'restricted_flag', false,
      'privileged_flag', true
    ),
    'source_refs', jsonb_build_object(
      'command_id', '72000000-0000-0000-0000-000000003101',
      'draft_id', '72000000-0000-0000-0000-000000003102',
      'request_hash', 'smoke-privileged-request-hash-001'
    ),
    'created_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF')
  )
);

select aiworker.fn_store_payload_document(
  'SMOKE_PRIV_INTAKE_V1',
  'PAYLOAD_OFFICIAL_INTAKE_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'intake_type', 'PRIVILEGED_CONTEXT_INTAKE',
    'controlled_function_code', 'aiworker.fn_apply_worker_privileged_context_change',
    'target_truth_surface', 'aiworker.worker_privileged_profile',
    'worker_id', '71000000-0000-0000-0000-000000001002',
    'business_request_id', '72000000-0000-0000-0000-000000003001',
    'gate_code', 'GATE_PRIVILEGED',
    'approval_ticket_id', null,
    'audit_required_flag', false,
    'reason_code', 'SMOKE_PRIVILEGED_CONTEXT',
    'execution_candidate', jsonb_build_object(
      'requested_transition_code', 'ACTIVATE',
      'target_key', jsonb_build_object('worker_id', '71000000-0000-0000-0000-000000001002'),
      'new_values', jsonb_build_object(
        'privileged_context_code', 'SMOKE_PRIV_CONTEXT',
        'active_flag', true
      )
    ),
    'correlation', jsonb_build_object(
      'staging_id', '72000000-0000-0000-0000-000000003103',
      'request_hash', 'smoke-privileged-request-hash-001',
      'client_request_id', 'smoke-privileged-client-request-001'
    ),
    'submitted_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF'),
    'submitted_by', 'SMOKE_SYSTEM'
  )
);

insert into aiworker.command_row (
  command_id,
  command_type,
  source_system,
  source_actor_type,
  requested_lane,
  requested_domain,
  requested_role,
  target_worker_id,
  tenant_company_id,
  tenant_user_id,
  app_scope_code,
  payload_ref,
  requested_at,
  requested_by,
  command_status
)
values (
  '72000000-0000-0000-0000-000000003101'::uuid,
  'PRIVILEGED_CONTEXT_CHANGE',
  'aiworker_smoke',
  'SYSTEM',
  'OFFICIAL_REQUEST',
  'operations',
  'privileged_support',
  '71000000-0000-0000-0000-000000001002'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  'aiworker_smoke_scope',
  'SMOKE_PRIV_COMMAND_V1',
  now(),
  'SMOKE_SYSTEM',
  'RECEIVED'
)
on conflict (command_id) do update
  set payload_ref = excluded.payload_ref,
      requested_at = now(),
      requested_by = excluded.requested_by,
      command_status = excluded.command_status;

insert into aiworker.draft_row (
  draft_id,
  command_id,
  worker_id,
  draft_type,
  draft_summary,
  draft_payload_ref,
  draft_status,
  created_at,
  reviewed_at
)
values (
  '72000000-0000-0000-0000-000000003102'::uuid,
  '72000000-0000-0000-0000-000000003101'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'PRIVILEGED_CONTEXT_DRAFT',
  'Smoke privileged context draft',
  'SMOKE_PRIV_DRAFT_V1',
  'OPEN',
  now(),
  null
)
on conflict (draft_id) do update
  set draft_payload_ref = excluded.draft_payload_ref,
      draft_status = excluded.draft_status,
      created_at = now(),
      reviewed_at = null;

insert into aiworker.staging_row (
  staging_id,
  draft_id,
  staging_type,
  normalized_payload_ref,
  gate_code,
  staging_status,
  created_at
)
values (
  '72000000-0000-0000-0000-000000003103'::uuid,
  '72000000-0000-0000-0000-000000003102'::uuid,
  'PRIVILEGED_CONTEXT_STAGING',
  'SMOKE_PRIV_STAGING_V1',
  'GATE_PRIVILEGED',
  'READY',
  now()
)
on conflict (staging_id) do update
  set normalized_payload_ref = excluded.normalized_payload_ref,
      gate_code = excluded.gate_code,
      staging_status = excluded.staging_status,
      created_at = now();

insert into aiworker.official_intake_request (
  intake_id,
  staging_id,
  intake_type,
  target_truth_surface,
  controlled_function_code,
  approval_ticket_id,
  audit_required_flag,
  submitted_by,
  submitted_at,
  intake_status,
  applied_at
)
values (
  '72000000-0000-0000-0000-000000003104'::uuid,
  '72000000-0000-0000-0000-000000003103'::uuid,
  'PRIVILEGED_CONTEXT_INTAKE',
  'aiworker.worker_privileged_profile',
  'aiworker.fn_apply_worker_privileged_context_change',
  null,
  false,
  'SMOKE_SYSTEM',
  now(),
  'READY_TO_APPLY',
  null
)
on conflict (intake_id) do update
  set staging_id = excluded.staging_id,
      intake_type = excluded.intake_type,
      target_truth_surface = excluded.target_truth_surface,
      controlled_function_code = excluded.controlled_function_code,
      audit_required_flag = excluded.audit_required_flag,
      submitted_by = excluded.submitted_by,
      submitted_at = now(),
      intake_status = 'READY_TO_APPLY',
      applied_at = null;

insert into aiworker.worker_exception_control_state (
  worker_exception_control_state_id,
  worker_id,
  exception_state_code,
  exception_reason_code,
  opened_at,
  closed_at,
  updated_at
)
values (
  '72000000-0000-0000-0000-000000002301'::uuid,
  '71000000-0000-0000-0000-000000001002'::uuid,
  'OPEN',
  'SMOKE_RESTRICTED_EXCEPTION',
  now(),
  null,
  now()
)
on conflict (worker_exception_control_state_id) do update
  set exception_state_code = excluded.exception_state_code,
      exception_reason_code = excluded.exception_reason_code,
      opened_at = excluded.opened_at,
      closed_at = null,
      updated_at = now();

insert into aiworker.restricted_privileged_smoke_registry (
  smoke_code,
  smoke_status_code,
  note_text,
  applied_at,
  updated_at
)
values (
  'SMOKE_RESTRICTED_PRIVILEGED_SCENARIO_V1',
  'APPLIED',
  'Restricted and privileged smoke seeds are applied',
  now(),
  now()
)
on conflict (smoke_code) do update
  set smoke_status_code = excluded.smoke_status_code,
      note_text = excluded.note_text,
      updated_at = now();

commit;
