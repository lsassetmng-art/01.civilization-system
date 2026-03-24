# ============================================================
# CIVILIZATION RETRY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retry flow for synchronization and coordination failures.

flow_steps:
1 failed unit is identified
2 idempotency basis is verified
3 transient or terminal classification is applied
4 retryable unit is requeued
5 terminal failure is moved toward dead-letter handling
6 retry metadata is persisted

retry_rule:
Retry must never bypass idempotency or policy checks.
