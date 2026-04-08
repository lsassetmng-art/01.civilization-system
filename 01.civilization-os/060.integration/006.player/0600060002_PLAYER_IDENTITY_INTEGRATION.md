# ============================================================
# PLAYER IDENTITY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for player identity data.

scope:
Covers identity-bound player projection,
historical identity export,
and rejection of unsafe identity ownership transfer.

required_behavior:
- Support internal identity-linked player projection.
- Support history-safe identity export.
- Prevent external identity payload from redefining canonical player identity binding without authority.
- Mask or deny restricted identity detail outside allowed scope.

projection_classes:
- internal_identity_context
- historical_identity_trace
- audit_identity_trace

validation_rules:
- identity_ref is required.
- historical identity export requires historical flag.
- external payload must not redefine canonical active identity binding without authority.

failure_codes:
- PLAYER_ID_INT_REF_MISSING
- PLAYER_ID_INT_HISTORICAL_FLAG_REQUIRED
- PLAYER_ID_INT_BIND_OVERWRITE_DENIED

example_scenarios:
- An audit trace includes historical identity binding history.
- An external correction request is proposal_only unless explicit authority exists.
