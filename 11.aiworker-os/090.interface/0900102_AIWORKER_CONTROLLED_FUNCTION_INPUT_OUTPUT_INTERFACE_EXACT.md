# ============================================================
# AIWORKER CONTROLLED FUNCTION INPUT OUTPUT INTERFACE EXACT
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the common input and output contract for controlled functions.

common_input_fields:
- p_intake_id
- p_controlled_function_code
- p_actor_type
- p_actor_id
- p_worker_id
- p_business_request_id
- p_gate_code
- p_requested_transition_code
- p_target_truth_surface
- p_payload_ref
- p_approval_ticket_id
- p_audit_required_flag
- p_reason_code
- p_requested_at

common_output_fields:
- o_success_flag
- o_result_code
- o_aiworker_status_code
- o_summary_code
- o_state_family_code
- o_old_state_code
- o_new_state_code
- o_related_entity_id
- o_event_id
- o_emitted_at

common_error_codes:
- ERR_INTAKE_NOT_FOUND
- ERR_FUNCTION_CODE_MISMATCH
- ERR_GATE_REQUIRED
- ERR_GATE_DENIED
- ERR_APPROVAL_REQUIRED
- ERR_AUDIT_REQUIRED
- ERR_INVALID_TARGET_SURFACE
- ERR_WORKER_NOT_FOUND
- ERR_WORKER_SUSPENDED
- ERR_WORKER_RETIRED
- ERR_ILLEGAL_TRANSITION
- ERR_CORRELATION_MISSING
- ERR_PAYLOAD_INVALID
- ERR_INTERNAL_WRITE_FAILED

function_specific_contracts:
- assignment state apply:
  required_input:
  - p_worker_id
  - p_business_request_id
  - p_requested_transition_code
  - p_gate_code
  output_focus:
  - state_family_code = ASSIGNMENT

- availability state apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_gate_code
  output_focus:
  - state_family_code = AVAILABILITY

- repair transition apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_reason_code
  - p_gate_code
  output_focus:
  - state_family_code = REPAIR

- rebuild transition apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_reason_code
  - p_gate_code
  output_focus:
  - state_family_code = REBUILD

- tendency update apply:
  required_input:
  - p_worker_id or target tendency key
  - p_payload_ref
  - p_gate_code
  output_focus:
  - state_family_code = TENDENCY

- growth event apply:
  required_input:
  - p_worker_id
  - p_payload_ref
  - p_reason_code
  output_focus:
  - state_family_code = GROWTH

- privileged context change apply:
  required_input:
  - p_worker_id
  - p_requested_transition_code
  - p_gate_code
  output_focus:
  - state_family_code = PRIVILEGED_CONTEXT

hard_rules:
- controlled functions receive normalized input only
- direct raw-table mutation parameters are prohibited
- result output is standardized even when a function has specialized logic
