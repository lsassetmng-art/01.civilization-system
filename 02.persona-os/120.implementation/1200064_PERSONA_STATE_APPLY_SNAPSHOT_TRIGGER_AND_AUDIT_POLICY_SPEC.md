# PERSONA STATE APPLY SNAPSHOT TRIGGER AND AUDIT POLICY SPEC

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_173018

purpose:
Fixes exact snapshot-trigger and audit behavior around persona-state-apply.

snapshot_trigger_policy:
- snapshot trigger occurs after mark_processed success
- snapshot trigger uses internal token gated call to snapshot issue boundary
- snapshot trigger is best-effort in current design profile
- snapshot trigger failure does not rewrite successful apply outcome in current profile

audit_policy:
- success path writes apply_run_log through helper
- engine error path attempts audit evidence write
- fatal path attempts audit evidence write
- signed log enrichment is attempted only when signing env exists
- missing signing env may warn but must not fail main apply path

signed_log_fields:
- run_id
- stage
- event_id
- event_type
- mode
- ok
- http_status
- error_message

policy_rules:
- audit helper remains evidence support, not truth mutation
- successful truth mutation is not invalidated by best-effort audit-sign enrichment failure
- snapshot and audit helpers remain downstream from decisive truth-mutation completion

