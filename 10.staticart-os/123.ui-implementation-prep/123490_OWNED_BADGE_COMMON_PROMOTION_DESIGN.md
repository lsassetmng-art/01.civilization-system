# ============================================================
# OWNED BADGE COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Owned Badge Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Owned Badge Common
as a reusable ownership-state badge family.

canonical_responsibility:
- render owned-state indicator
- support compact and normal badge forms
- expose ownership-state-safe summary for cards and detail surfaces

not_responsible_for:
- entitlement resolution engine ownership
- purchase logic
- StaticArtOS-specific ownership wording

reuse_scope:
- marketplace applications
- library applications
- owned-content surfaces
- product/detail/card surfaces

required_inputs:
- ownership_state
- badge_profile
- compact_flag

emitted_events:
- owned_badge_rendered

state_model:
- owned_state_true
- owned_state_false
- owned_state_unknown

promotion_caution:
- do not merge with entitlement logic
- keep wording app-agnostic

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
