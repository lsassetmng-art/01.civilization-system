# ============================================================
# PLAYER IDENTITY SECURITY
# ============================================================

status: canonical
layer: security
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for player identity binding.

scope:
Covers identity read protection,
identity-binding mutation authorization,
history/audit access,
and conflict containment visibility.

security_focus:
- identity binding confidentiality
- prevention of unauthorized identity replacement
- controlled access to historical identity traces
- containment of binding conflicts

actor_matrix:
- self_consumer -> self identity context where policy allows
- internal_consumer -> internal identity context where authorized
- restricted_operator -> identity correction actions where authorized
- high_trust_operator -> identity-binding replacement where authorized
- auditor -> historical identity traces where authorized

decision_table:
- self_consumer + own identity context -> allow where policy allows
- unrelated consumer + restricted identity detail -> block
- restricted_operator + identity correction -> allow only with authority
- external/unauthorized overwrite attempt -> block
- auditor + historical identity trace -> allow only via audit/history path

validation_rules:
- identity_ref is required.
- identity-binding replacement requires explicit authority basis.
- historical identity traces require history/audit authorization.
- conflict containment visibility must not leak sensitive identity detail to unauthorized users.

failure_codes:
- PLAYER_ID_SEC_IDENTITY_REF_MISSING
- PLAYER_ID_SEC_READ_DENIED
- PLAYER_ID_SEC_REPLACEMENT_DENIED
- PLAYER_ID_SEC_HISTORY_ACCESS_DENIED
- PLAYER_ID_SEC_CONFLICT_DETAIL_DENIED

example_scenarios:
- A support operator may view bounded identity context, but not perform replacement without higher authority.
