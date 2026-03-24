# ============================================================
# LIFE FOLLOW UP RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for follow-up, check-in, and habit progress handling.

runtime_scope:
- validate life-operations target
- validate owner, persona, and timing basis
- update follow-up lifecycle state
- preserve follow-up traceability

trigger_conditions:
- follow-up planned
- check-in submitted
- habit progress recorded
- check-in missed
- follow-up skipped

processing_steps:
1 resolve follow-up, check-in, or progress target
2 verify owner, persona, timing, and source basis
3 apply life-operations state transition
4 persist follow-up result
5 preserve audit and follow-up trace

state_transition:
- planned -> active
- active -> completed
- active -> skipped
- planned -> submitted
- submitted -> accepted
- submitted -> missed
- current -> revised
- revised -> completed

success_condition:
- life follow-up lifecycle updated explicitly

failure_condition:
- invalid target
- owner, persona, or timing basis unresolved
- persistence failure
