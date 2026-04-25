# ============================================================
# AIWORKER CONTROLLED FUNCTION SQL CONTRACT EXACT
# ============================================================

status: exact-sql-contract
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact SQL contract direction for AiworkerOS controlled functions.

design_decisions:
- PostgreSQL function/procedure direction is assumed
- controlled functions are the only legal canonical mutation executors
- each controlled function validates intake, gate, transition, audit requirement, and output emission
- function bodies are not fully implemented in this WB03 document; only exact contracts are frozen

normalized_function_catalog:
- aiworker.fn_apply_worker_assignment_state
- aiworker.fn_apply_worker_availability_state
- aiworker.fn_apply_worker_repair_transition
- aiworker.fn_apply_worker_rebuild_transition
- aiworker.fn_apply_worker_tendency_update
- aiworker.fn_apply_worker_growth_event
- aiworker.fn_apply_worker_privileged_context_change
- aiworker.fn_record_business_result_correlation

common_contract_shape:
```sql
create or replace function aiworker.fn_example_contract_only (
  p_intake_id uuid,
  p_actor_type text,
  p_actor_id text,
  p_worker_id uuid,
  p_business_request_id uuid,
  p_gate_code text,
  p_requested_transition_code text,
  p_target_truth_surface text,
  p_payload_ref text,
  p_approval_ticket_id text,
  p_audit_required_flag boolean,
  p_reason_code text,
  p_requested_at timestamptz
)
returns table (
  success_flag boolean,
  result_code text,
  aiworker_status_code text,
  summary_code text,
  state_family_code text,
  old_state_code text,
  new_state_code text,
  related_entity_id uuid,
  event_id uuid,
  emitted_at timestamptz
)
language sql
as $$
  select
    false::boolean,
    'CONTRACT_ONLY'::text,
    'CONTRACT_ONLY'::text,
    'CONTRACT_ONLY'::text,
    'CONTRACT_ONLY'::text,
    null::text,
    null::text,
    null::uuid,
    null::uuid,
    null::timestamptz
$$;
```

function_contract_details:
- aiworker.fn_apply_worker_assignment_state
  target_truth_surface:
  - aiworker.worker_assignment_state
  mandatory_side_effects:
  - update current assignment row
  - write worker_state_change_log
  - optionally write worker_assignment_history
  - emit event_outbox row

- aiworker.fn_apply_worker_availability_state
  target_truth_surface:
  - aiworker.worker_availability_state
  mandatory_side_effects:
  - update current availability row
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_apply_worker_repair_transition
  target_truth_surface:
  - aiworker.worker_repair_history
  - worker lifecycle and/or availability family when applicable
  mandatory_side_effects:
  - write repair history
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_apply_worker_rebuild_transition
  target_truth_surface:
  - aiworker.worker_rebuild_history
  - worker lifecycle and/or availability family when applicable
  mandatory_side_effects:
  - write rebuild history
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_apply_worker_tendency_update
  target_truth_surface:
  - aiworker.company_ai_usage_tendency or aiworker.user_ai_usage_tendency
  mandatory_side_effects:
  - close previous current row when versioned
  - insert new current row
  - emit event_outbox row when required

- aiworker.fn_apply_worker_growth_event
  target_truth_surface:
  - aiworker.worker_growth_event
  - aiworker.worker_growth_profile
  mandatory_side_effects:
  - insert growth event row
  - update growth profile aggregates
  - write worker_state_change_log when state family changes
  - emit event_outbox row when required

- aiworker.fn_apply_worker_privileged_context_change
  target_truth_surface:
  - aiworker.worker_privileged_profile
  mandatory_side_effects:
  - activate/deactivate privileged profile row
  - write worker_state_change_log
  - emit event_outbox row

- aiworker.fn_record_business_result_correlation
  target_truth_surface:
  - normalized result correlation ledger or official_intake status fields
  mandatory_side_effects:
  - persist business_request_id linkage
  - persist summary/result codes
  - no mutation of worker truth by this function alone

hard_rules:
- no mutation route may skip function catalog
- no function may write to business schema
- no function may widen cx22073jw access
