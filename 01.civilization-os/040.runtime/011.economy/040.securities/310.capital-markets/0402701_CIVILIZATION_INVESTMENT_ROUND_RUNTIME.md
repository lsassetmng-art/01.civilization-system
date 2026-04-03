# ============================================================
# CIVILIZATION INVESTMENT ROUND RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for investment round handling.

runtime_scope:
- validate round target
- validate pricing and issuer basis
- update round state
- preserve fundraising traceability

trigger_conditions:
- round opened
- commitment accepted
- round closed
- round failed
- round cancelled

processing_steps:
1 resolve round target and issuer
2 verify pricing basis and commitment inputs
3 apply round state transition
4 persist round result
5 preserve audit and fundraising trace

success_condition:
- investment round lifecycle updated explicitly

failure_condition:
- invalid target
- pricing or issuer basis unresolved
- persistence failure
