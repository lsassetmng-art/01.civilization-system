# PERSONA EDGE APPLY ORCHESTRATOR FAIL CLOSED AND BEST EFFORT POLICY

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_113916

purpose:
Fixes which behaviors are fail-closed and which are best-effort in the orchestrator.

fail_closed_stages:
- missing required env for mandatory execution
- auth failure
- invalid json
- missing required fields
- control gate disabled
- registry lookup failure
- persona lookup failure
- engine call failure
- mark_processed failure
- fatal unhandled error

best_effort_stages:
- success-path signed apply_run_log enrichment
- success-path apply_run_log helper persistence when helper is declared non-blocking
- snapshot trigger under current design profile

policy_notes:
- best-effort means failure does not rewrite the main apply outcome
- fail-closed means processing must stop and surface terminal failure
- mark_processed is explicitly fail-closed because retry safety depends on decisive completion write

future_split_hook:
A later policy may classify event types into:
- snapshot_required_fail_closed
- snapshot_best_effort
That split is not finalized in this document.

