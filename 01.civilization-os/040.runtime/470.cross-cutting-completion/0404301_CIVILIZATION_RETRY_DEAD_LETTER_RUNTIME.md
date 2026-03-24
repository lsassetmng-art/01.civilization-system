# ============================================================
# CIVILIZATION RETRY DEAD LETTER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for retry and dead-letter handling.

runtime_scope:
- validate failure target
- validate retry and terminal basis
- update retry or dead-letter state
- preserve failure traceability

trigger_conditions:
- recoverable failure detected
- retry scheduled
- retry exhausted
- dead-letter admission approved
- restoration requested

processing_steps:
1 resolve failure target and profile
2 verify retry, cutoff, and quarantine basis
3 apply retry or dead-letter state transition
4 persist failure result
5 preserve audit and failure trace

retry_principles:
- retry only for explicitly recoverable failures
- backoff must be explicit and bounded
- retry exhaustion must transition deterministically
- duplicate effective retry must be suppressed

dead_letter_conditions:
- retry budget exhausted
- incompatible contract version
- irrecoverable validation failure
- authority basis unresolved after retry window
- target missing beyond terminal cutoff

success_condition:
- retry or dead-letter lifecycle updated explicitly

failure_condition:
- invalid target
- retry or dead-letter basis unresolved
- persistence failure
