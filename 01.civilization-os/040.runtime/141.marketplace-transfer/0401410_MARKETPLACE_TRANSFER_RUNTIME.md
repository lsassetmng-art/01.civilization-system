# ============================================================
# MARKETPLACE TRANSFER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for seller immutability and game-level transfer handling.

runtime_scope:
- validate transfer target
- enforce seller owner-class immutability
- validate source seller, target seller, product, and title basis
- execute approved game-level transfer only
- preserve transfer traceability

trigger_conditions:
- transfer requested
- transfer review started
- transfer approved
- transfer rejected
- transfer executed

processing_steps:
1 resolve prohibition, request, or transfer target
2 verify source seller, target seller, product, title, and responsibility basis
3 enforce seller owner-class change prohibition
4 apply transfer state transition
5 persist transfer result
6 preserve audit and transfer trace

state_transition:
- created -> under_review
- under_review -> approved
- under_review -> rejected
- approved -> executed
- executed -> reversed
- pending -> failed

success_condition:
- marketplace transfer lifecycle updated explicitly without seller owner-class mutation

failure_condition:
- invalid target
- seller owner-class mutation requested
- source or target seller basis unresolved
- product or title basis unresolved
- persistence failure
