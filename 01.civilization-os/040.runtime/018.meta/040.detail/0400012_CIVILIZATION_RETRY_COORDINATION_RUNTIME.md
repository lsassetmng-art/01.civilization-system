# ============================================================
# CIVILIZATION RETRY COORDINATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define canonical retry coordination runtime.

runtime_scope:
- select retryable sync unit
- verify idempotency basis
- classify transient vs terminal failure
- requeue or stop retry

trigger_conditions:
- failed inbox event marked retryable
- failed outbox event marked retryable
- approved replay or repair action

processing_steps:
1 identify retryable unit
2 verify correlation and idempotency basis
3 classify transient or terminal failure
4 requeue retryable unit
5 move terminal failure toward dead-letter handling
6 persist retry metadata

success_condition:
- retry path updated without duplicate effective execution

failure_condition:
- missing idempotency basis
- invalid retry metadata
- unrecoverable failure classification
