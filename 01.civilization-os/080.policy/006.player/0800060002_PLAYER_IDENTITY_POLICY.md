# ============================================================
# PLAYER IDENTITY POLICY
# ============================================================

status: canonical
layer: policy
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for player identity binding.

scope:
Covers identity disclosure,
identity-binding correction,
retention of identity history,
and prohibition of unauthorized identity overwrite.

policy_focus:
- internal versus restricted identity disclosure
- active identity-binding integrity
- historical retention of prior bindings
- prohibition of authorityless identity replacement

disclosure_matrix:
- internal_identity_context -> internal only
- restricted_identity_context -> restricted
- historical_identity_trace -> historical or audit only
- audit_identity_trace -> audit_only

validation_rules:
- identity_ref is required.
- active identity binding must remain unique within allowed policy scope.
- historical identity records must remain retained where required.
- external identity replacement without authority is denied.

failure_codes:
- PLAYER_ID_POLICY_REF_MISSING
- PLAYER_ID_POLICY_BINDING_CONFLICT
- PLAYER_ID_POLICY_HISTORY_REQUIRED
- PLAYER_ID_POLICY_OVERWRITE_DENIED

example_scenarios:
- A prior identity binding may remain preserved historically after correction.
