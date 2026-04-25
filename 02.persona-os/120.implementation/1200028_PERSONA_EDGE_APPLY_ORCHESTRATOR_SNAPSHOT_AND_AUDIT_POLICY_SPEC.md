# PERSONA EDGE APPLY ORCHESTRATOR SNAPSHOT AND AUDIT POLICY SPEC

status: implementation-code-prep-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113441

target:
- edge_apply_orchestrator

snapshot_policy_current:
- snapshot trigger occurs after mark_processed
- snapshot trigger is best-effort in the current orchestrator generation target
- snapshot failure must not rewrite canonical apply result in this handler

audit_policy_current:
- apply_run_log is best-effort through helper
- signed log generation is best-effort when signing env exists
- missing signing env may warn but must not fail the apply path
- fatal and engine failure should still attempt audit evidence write

signed_log_fields:
- run_id
- stage
- event_id
- event_type
- mode
- ok
- http_status
- error_message

future_policy_hook:
A later PersonaOS policy may split event types into:
- snapshot_required_fail_closed
- snapshot_best_effort
That split is not fixed in this document.

