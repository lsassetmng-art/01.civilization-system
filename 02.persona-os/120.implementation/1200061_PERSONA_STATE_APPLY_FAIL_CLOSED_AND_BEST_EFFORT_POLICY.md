# PERSONA STATE APPLY FAIL CLOSED AND BEST EFFORT POLICY

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_173018

purpose:
Fixes fail-closed and best-effort behavior for persona-state-apply.

fail_closed_conditions:
- missing mandatory env
- auth failure
- invalid json
- missing required fields
- control gate disabled
- registry read failure
- persona lookup failure
- event_not_enabled
- engine call failure
- mark_processed failure
- fatal unhandled runtime error

best_effort_conditions:
- snapshot trigger under current runtime profile
- signed apply_run_log enrichment when signing material exists
- success-path apply_run_log helper persistence when helper is defined as non-blocking

policy_rules:
- fail-closed means terminal failure must be returned immediately
- best-effort means helper failure must not rewrite already-determined main apply outcome
- mark_processed remains fail-closed because retry safety depends on decisive completion write
- duplicate detection remains terminal and non-mutating, not best-effort

future_policy_hook:
A later policy may split event classes into:
- snapshot_required_fail_closed
- snapshot_best_effort
That split is not finalized here.

