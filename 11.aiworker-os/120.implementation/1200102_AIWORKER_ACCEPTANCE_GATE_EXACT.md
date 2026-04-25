# ============================================================
# AIWORKER ACCEPTANCE GATE EXACT
# ============================================================

status: exact-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the minimum acceptance gates for implementation-ready status.

must_pass:
- business does not own worker mutable truth
- aiworker owns worker entity and state truth
- AI workers do not read raw aiworker tables
- AI workers do not read raw business tables
- cx22073jw families are AI-worker-only
- style does not change authority
- rank does not bypass gate
- official apply path uses controlled function only
- repair and rebuild state changes are logged
- business correlation is preserved on result events

freeze_condition:
Implementation-ready status is granted only after all must_pass items are satisfied.
