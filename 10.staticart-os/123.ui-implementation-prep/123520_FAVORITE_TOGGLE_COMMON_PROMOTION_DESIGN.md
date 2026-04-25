# ============================================================
# FAVORITE TOGGLE COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Favorite Toggle Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Favorite Toggle Common
as a reusable favorite-state interaction family.

canonical_responsibility:
- toggle favorite on/off
- expose favorite-state summary
- normalize favorite action behavior for consumer apps

not_responsible_for:
- persistence engine ownership
- recommendation engine ownership
- StaticArtOS-specific UX wording

reuse_scope:
- discovery applications
- marketplace applications
- library applications
- detail/card/list surfaces

required_inputs:
- target_id
- favorite_state
- favorite_profile
- permission_context_or_null

emitted_events:
- favorite_add_requested
- favorite_remove_requested
- favorite_state_changed

state_model:
- favorite_present
- favorite_absent
- favorite_pending
- favorite_failed

promotion_caution:
- do not merge with recommendation logic
- keep persistence backend outside
- keep wording generic

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
