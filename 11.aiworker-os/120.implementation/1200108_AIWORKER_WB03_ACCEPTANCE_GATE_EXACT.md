# ============================================================
# AIWORKER WB03 ACCEPTANCE GATE EXACT
# ============================================================

status: wb03-acceptance-gate
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the acceptance gate for WB03 controlled-function exact design.

must_pass:
- official intake is the only legal canonical mutation request surface
- controlled functions are the only legal canonical mutation executors
- each function has fixed target truth surface
- each function has fixed validation order
- each function has fixed mandatory side effects
- illegal transitions fail closed
- approval requirement cannot be bypassed by rank, role, or style
- audit-required mutations cannot succeed without audit write
- required result-return mutations cannot succeed without outbox emission
- business correlation is output-only and not cross-schema direct mutation
- cx22073jw implementation remains external to WB03 scope

freeze_condition:
WB03 is implementation-ready only when all must_pass items are satisfied.
