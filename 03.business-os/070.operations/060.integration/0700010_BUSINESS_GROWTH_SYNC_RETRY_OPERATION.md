# ============================================================
# BUSINESS GROWTH SYNC RETRY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define retry-safe handling for failed Business-to-Persona
growth synchronization.

retry_targets:
- BUSINESS_EVENT_OUTBOX_MODEL
- BUSINESS_PERSONA_GROWTH_REQUEST_MODEL
- BUSINESS_SYNC_EVENT_INBOX_MODEL when result consume fails

retry_principles:
- preserve idempotency
- avoid duplicate effective growth requests
- preserve causal traceability
- separate transient failure from terminal failure

retry_steps:
1 identify failed or retryable event/request
2 verify idempotency key and correlation chain
3 determine transient or terminal failure class
4 retry eligible event
5 update retry metadata
6 stop retry when policy threshold is reached

terminal_failure_examples:
- invalid payload contract
- unauthorized target
- incompatible Persona release
- permanently rejected growth request
