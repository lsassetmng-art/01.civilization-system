# ============================================================
# INTERNAL INTEGRATION SECURITY
# ============================================================

status: canonical
layer: security
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for internal integration contracts.

scope:
Covers internal read contracts,
action-capable internal contracts,
effect-scope enforcement,
and audit-trace protection for internal integration.

security_focus:
- protection against hidden mutation inside internal boundaries
- distinction between read and action paths
- effect-scope enforcement
- audit trace access control

actor_matrix:
- internal_consumer -> internal read as authorized
- restricted_operator -> action-capable internal contracts where authorized
- auditor -> internal audit traces where authorized

decision_table:
- internal_consumer + read contract -> allow where authorized
- internal_consumer + hidden mutation path -> block
- restricted_operator + action contract -> allow only with effect scope and authority
- auditor + internal audit trace -> allow only through audit path

validation_rules:
- source_scope and target_scope are required.
- effect_scope is required for action-capable contracts.
- internal read access must not be upgraded into mutation.
- audit traces must remain non-mutating and restricted.

failure_codes:
- INTERNAL_INT_SEC_SCOPE_MISSING
- INTERNAL_INT_SEC_EFFECT_SCOPE_REQUIRED
- INTERNAL_INT_SEC_HIDDEN_MUTATION_DENIED
- INTERNAL_INT_SEC_AUDIT_TRACE_DENIED

example_scenarios:
- An internal action request is blocked because effect scope is absent, even though the actor can read the contract.
