# ============================================================
# LIFECYCLE TRANSITION HELPER BASE PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: implementation-basis
component_name: lifecycle transition helper base
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for lifecycle transition helper base
as a reusable state-machine helper primitive.

canonical_responsibility:
- define allowed-transition map structure
- validate requested transition against allowed map
- expose invalid-transition conflict result
- normalize transition helper output for consumers

not_responsible_for:
- StaticArtOS lifecycle enum itself
- business-specific transition rules
- persistence mapping ownership
- workflow UI ownership

reuse_scope:
- domain lifecycle helpers
- moderation/review flows
- publish-state helpers
- task/state machine helpers
- asset/state transition utilities

required_inputs:
- current_state
- requested_state
- allowed_transition_map
- transition_profile_or_null

emitted_outputs:
- transition_allowed
- transition_denied
- invalid_transition_conflict
- normalized_transition_result

state_model:
- transition_not_evaluated
- transition_allowed
- transition_denied

promotion_caution:
- keep concrete lifecycle vocabularies outside
- do not embed StaticArtOS-only enums
- do not merge helper with persistence or workflow surfaces

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes_with_caution
