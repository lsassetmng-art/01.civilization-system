# ============================================================
# CIVILIZATION FAILURE CLASSIFICATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define architecture-level failure classification.

failure_classes:
- transient_transport_failure
- contract_validation_failure
- authorization_failure
- compatibility_failure
- state_conflict_failure
- retry_budget_exhausted
- unrecoverable_terminal_failure

rules:
- transient and terminal failures must be distinguished
- retry-eligible failure must preserve idempotency basis
- terminal failures must not loop indefinitely
- failure classification must be auditable
