begin;

select aiworker.fn_store_payload_document(
  'SMOKE_COMMAND_ASSIGNMENT_V1',
  'PAYLOAD_COMMAND_ROW_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'command_type', 'ASSIGNMENT_APPLY',
    'source_system', 'aiworker_smoke',
    'source_actor_type', 'SYSTEM',
    'requested_lane', 'OFFICIAL_REQUEST',
    'requested_domain', 'operations',
    'requested_role', 'operations_assistant',
    'target_worker_id', '71000000-0000-0000-0000-000000001001',
    'tenant_company_id', '71000000-0000-0000-0000-000000000101',
    'tenant_user_id', '71000000-0000-0000-0000-000000000201',
    'app_scope_code', 'aiworker_smoke_scope',
    'business_request_id', '71000000-0000-0000-0000-000000003001',
    'reason_code', 'SMOKE_ASSIGNMENT',
    'requested_transition_code', 'ASSIGNED',
    'request_context', jsonb_build_object(
      'intent_code', 'SMOKE_ASSIGNMENT_APPLY',
      'note_text', 'Smoke assignment command',
      'source_reference_id', 'SMOKE-CMD-001'
    ),
    'idempotency', jsonb_build_object(
      'request_hash', 'smoke-request-hash-001',
      'client_request_id', 'smoke-client-request-001'
    ),
    'requested_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF'),
    'requested_by', 'SMOKE_SYSTEM'
  )
);

select aiworker.fn_store_payload_document(
  'SMOKE_DRAFT_ASSIGNMENT_V1',
  'PAYLOAD_DRAFT_ROW_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'draft_type', 'ASSIGNMENT_DRAFT',
    'worker_id', '71000000-0000-0000-0000-000000001001',
    'business_request_id', '71000000-0000-0000-0000-000000003001',
    'proposed_state_family_code', 'ASSIGNMENT',
    'proposed_transition_code', 'ASSIGNED',
    'proposal_summary', jsonb_build_object(
      'headline', 'Smoke assignment draft',
      'summary_code', 'SUM_APPLIED',
      'reason_code', 'SMOKE_ASSIGNMENT'
    ),
    'proposal_details', jsonb_build_object(
      'candidate_values', jsonb_build_object(
        'assignment_state_code', 'ASSIGNED'
      ),
      'human_review_points', jsonb_build_array('Smoke review point'),
      'risk_flags', jsonb_build_array()
    ),
    'source_command_ref', jsonb_build_object(
      'command_id', '71000000-0000-0000-0000-000000003101',
      'request_hash', 'smoke-request-hash-001'
    ),
    'created_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF')
  )
);

select aiworker.fn_store_payload_document(
  'SMOKE_STAGING_ASSIGNMENT_V1',
  'PAYLOAD_STAGING_ROW_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'staging_type', 'ASSIGNMENT_STAGING',
    'controlled_function_code', 'aiworker.fn_apply_worker_assignment_state',
    'target_truth_surface', 'aiworker.worker_assignment_state',
    'worker_id', '71000000-0000-0000-0000-000000001001',
    'business_request_id', '71000000-0000-0000-0000-000000003001',
    'state_family_code', 'ASSIGNMENT',
    'requested_transition_code', 'ASSIGNED',
    'normalized_candidate', jsonb_build_object(
      'target_key', jsonb_build_object('worker_id', '71000000-0000-0000-0000-000000001001'),
      'new_values', jsonb_build_object('assignment_state_code', 'ASSIGNED'),
      'close_previous_current_row', true,
      'history_write_required', true,
      'event_required', true
    ),
    'gate_context', jsonb_build_object(
      'gate_code', 'GATE_STANDARD',
      'approval_required_flag', false,
      'audit_required_flag', true,
      'restricted_flag', false,
      'privileged_flag', false
    ),
    'source_refs', jsonb_build_object(
      'command_id', '71000000-0000-0000-0000-000000003101',
      'draft_id', '71000000-0000-0000-0000-000000003102',
      'request_hash', 'smoke-request-hash-001'
    ),
    'created_at', to_char(now(), 'YYYY-MM-DD"T"HH24:MI:SSOF')
  )
);

select aiworker.fn_store_payload_document(
  'SMOKE_INTAKE_ASSIGNMENT_V1',
  'PAYLOAD_OFFICIAL_INTAKE_V1',
  jsonb_build_object(
    'payload_version', '1.0',
    'intake_type', 'ASSIGNMENT_INTAKE',
    'controlled_function_code', 'aiworker.fn_apply_worker_assignment_state',
    'target_truth_surface', 'aiworker.worker_assignment_state',
    'worker_id', '71000000-0000-0000-0000-000000001001',
    'business_request_id', '71000000-0000-0000-0000-000000003001',
    'gate_code', 'GATE_STANDARD',
    'approval_ticket_id', null,
    'audit_required_flag', true,
    'reason_code', 'SMOKE_ASSIGNMENT',
    'execution_candidate', jsonb_build_object(
      'requested_transition_code', 'ASSIGNED',
      'target_key', jsonb_build_object('worker_id', '71000000-0000-0000-0000-000000001001'),
      'new_values', jsonb_build_object('assignment_state_code', 'ASSIGNED')
    ),
    'correlation', jsonb_build_object(
      'staging_id', '71000000-0000-0000-0000-000000003103',
      'request_hash', 'smoke-request-hash-001',
      'client_request_id', 'smoke-client-request-001'
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
  '71000000-0000-0000-0000-000000003101'::uuid,
  'ASSIGNMENT_APPLY',
  'aiworker_smoke',
  'SYSTEM',
  'OFFICIAL_REQUEST',
  'operations',
  'operations_assistant',
  '71000000-0000-0000-0000-000000001001'::uuid,
  '71000000-0000-0000-0000-000000000101'::uuid,
  '71000000-0000-0000-0000-000000000201'::uuid,
  'aiworker_smoke_scope',
  'SMOKE_COMMAND_ASSIGNMENT_V1',
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
  '71000000-0000-0000-0000-000000003102'::uuid,
  '71000000-0000-0000-0000-000000003101'::uuid,
  '71000000-0000-0000-0000-000000001001'::uuid,
  'ASSIGNMENT_DRAFT',
  'Smoke assignment draft',
  'SMOKE_DRAFT_ASSIGNMENT_V1',
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
  '71000000-0000-0000-0000-000000003103'::uuid,
  '71000000-0000-0000-0000-000000003102'::uuid,
  'ASSIGNMENT_STAGING',
  'SMOKE_STAGING_ASSIGNMENT_V1',
  'GATE_STANDARD',
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
  '71000000-0000-0000-0000-000000003104'::uuid,
  '71000000-0000-0000-0000-000000003103'::uuid,
  'ASSIGNMENT_INTAKE',
  'aiworker.worker_assignment_state',
  'aiworker.fn_apply_worker_assignment_state',
  null,
  true,
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
      approval_ticket_id = excluded.approval_ticket_id,
      audit_required_flag = excluded.audit_required_flag,
      submitted_by = excluded.submitted_by,
      submitted_at = now(),
      intake_status = 'READY_TO_APPLY',
      applied_at = null;

insert into aiworker.smoke_seed_registry (
  smoke_seed_code,
  smoke_seed_status_code,
  note_text,
  applied_at,
  updated_at
)
values (
  'SMOKE_PAYLOAD_AND_INTAKE_V1',
  'APPLIED',
  'Smoke payload and intake seeds are applied',
  now(),
  now()
)
on conflict (smoke_seed_code) do update
  set smoke_seed_status_code = excluded.smoke_seed_status_code,
      note_text = excluded.note_text,
      updated_at = now();

commit;
