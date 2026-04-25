# ============================================================
# AIWORKER CONTROLLED FUNCTION AND OFFICIAL INTAKE EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the initial controlled mutation path for canonical truth.

official_intake_table:
- aiworker.official_intake_request
  primary_key: intake_id
  core_columns:
  - staging_id
  - intake_type
  - target_truth_surface
  - controlled_function_code
  - approval_ticket_id
  - audit_required_flag
  - submitted_by
  - submitted_at
  - intake_status
  - applied_at

controlled_function_catalog:
- aiworker.fn_apply_worker_assignment_state
- aiworker.fn_apply_worker_availability_state
- aiworker.fn_apply_worker_repair_transition
- aiworker.fn_apply_worker_rebuild_transition
- aiworker.fn_apply_worker_tendency_update
- aiworker.fn_apply_worker_growth_event
- aiworker.fn_apply_worker_privileged_context_change
- aiworker.fn_record_business_result_correlation

controlled_function_rules:
- function validates gate
- function validates approval requirement
- function validates audit requirement
- function validates target truth surface
- function writes state change log
- function emits result event payload reference

hard_rule:
Canonical truth mutation is allowed only through controlled functions.
