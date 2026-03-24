# ============================================================
# CIVILIZATION RETRY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define retry-safe operational handling for failed sync units.

retry_targets:
- CIVILIZATION_SYNC_INBOX_MODEL
- CIVILIZATION_SYNC_OUTBOX_MODEL
- approved repair replay units

retry_principles:
- preserve idempotency basis
- preserve correlation and causation traceability
- separate transient from terminal failure
- prevent infinite loops

operation_steps:
1 identify retryable unit
2 verify retry eligibility and idempotency basis
3 classify transient or terminal failure
4 requeue retryable unit
5 move terminal failure toward dead-letter handling
6 persist retry metadata

terminal_failure_examples:
- incompatible contract
- unauthorized target
- unrecoverable payload invalidity
- retry budget exhausted
