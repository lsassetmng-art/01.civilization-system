# ============================================================
# INTERNAL INTEGRATION POLICY
# ============================================================

status: canonical
layer: policy
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for internal integration contracts.

scope:
Covers internal read contracts,
internal action-capable contracts,
internal audit and review contracts,
and prohibition of hidden mutation.

policy_focus:
- internal scope clarity
- effect-scope requirement
- read versus action distinction
- retention of audit and review traces

validation_rules:
- source_scope is required.
- target_scope is required.
- action-capable internal contracts require explicit effect scope.
- hidden mutation through internal path is prohibited.
- audit/review traces must be retained as required.

failure_codes:
- INTERNAL_INTEGRATION_POLICY_SCOPE_MISSING
- INTERNAL_INTEGRATION_POLICY_EFFECT_SCOPE_REQUIRED
- INTERNAL_INTEGRATION_POLICY_HIDDEN_MUTATION_DENIED
- INTERNAL_INTEGRATION_POLICY_AUDIT_TRACE_REQUIRED

example_scenarios:
- An internal read contract is permitted, but an action-capable contract without effect scope is denied.

required_behavior:
- distinguish internal read from internal action paths
- require explicit effect scope for action-capable contracts
- preserve internal audit trace retention

policy_rules:
- internal does not mean unrestricted
- hidden mutation is prohibited
- review and audit traces must remain retained where required

disclosure_matrix:
- internal_read -> internal_only
- internal_action_capable -> restricted internal
- internal_audit_trace -> audit_only

authority_matrix:
- internal consumer -> bounded internal read only
- restricted operator -> action-capable internal contracts where authorized
- auditor -> audit trace only

allowed_denied_matrix:
- read_only internal read -> allowed
- hidden mutation through internal read path -> denied
- action-capable contract without effect scope -> denied
