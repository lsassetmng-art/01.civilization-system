# ============================================================
# AIWORKER BUSINESS CORRELATION AND RESULT RETURN CONTRACT EXACT
# ============================================================

status: exact-integration
system: AiworkerOS
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
Freeze the exact correlation and return contract between AiworkerOS canonical mutation
and BusinessOS-facing result linkage.

business_correlation_principle:
- business originates request-side truth
- aiworker owns worker-side canonical mutation
- aiworker returns business-facing correlation and result summary
- business must not infer raw internal mutation details as canonical worker truth

correlation_keys:
- business_request_id
- worker_id
- worker_assignment_state_id or equivalent target entity key
- intake_id
- controlled_function_code
- result_summary_code
- aiworker_status_code
- emitted_at

writeback_targets_inside_aiworker:
- official intake request status
- state change log
- event_outbox
- optional result correlation row if normalized ledger is used

return_event_types:
- AIWORKER_ASSIGNMENT_DECIDED
- AIWORKER_ASSIGNMENT_REJECTED
- AIWORKER_EXECUTION_STATE_CHANGED
- AIWORKER_RESULT_SUMMARY_READY
- AIWORKER_ESCALATION_REQUIRED
- AIWORKER_REPAIR_STATE_CHANGED
- AIWORKER_REBUILD_STATE_CHANGED

hard_rules:
- writeback does not create business truth directly inside business schema
- result return is event/correlation output, not cross-schema direct mutation
- billing, pricing, order, and ERP truth remain outside AiworkerOS canonical mutation scope
