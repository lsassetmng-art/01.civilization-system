# ============================================================
# PLAYER IDENTITY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for player identity binding.

scope:
Covers identity bind review,
verification, suspension handling,
correction, containment, and historical trace.

required_behavior:
- Support identity bind creation and verification.
- Support suspension of identity relation.
- Support correction of invalid binding.
- Support historical audit of prior bindings.

state_model:
player_identity_operational_state:
- prepared
- verified
- suspended
- corrected
- historical
- contained

validation_rules:
- identity_ref is required.
- conflicting active bindings require containment or correction.
- suspended binding must block live activation.

transition_rules:
- prepared -> verified
- verified -> suspended
- suspended -> corrected
- corrected -> verified
- verified -> historical
- verified -> contained

failure_codes:
- PLAYER_ID_OP_REF_MISSING
- PLAYER_ID_OP_BIND_CONFLICT
- PLAYER_ID_OP_SUSPENDED_LIVE_CONFLICT

example_scenarios:
- A conflicting identity bind is contained and corrected before player reactivation.
