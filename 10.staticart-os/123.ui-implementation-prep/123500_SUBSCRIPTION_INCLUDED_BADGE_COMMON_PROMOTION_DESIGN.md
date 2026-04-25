# ============================================================
# SUBSCRIPTION INCLUDED BADGE COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Subscription Included Badge Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Subscription Included Badge Common
as a reusable inclusion-state badge family.

canonical_responsibility:
- render included-in-subscription indicator
- support compact and normal badge forms
- expose inclusion-state-safe summary for cards and detail surfaces

not_responsible_for:
- subscription entitlement engine ownership
- billing logic
- StaticArtOS-specific inclusion wording

reuse_scope:
- subscription-enabled applications
- marketplace applications
- product/detail/card surfaces
- catalog/listing surfaces

required_inputs:
- inclusion_state
- badge_profile
- compact_flag

emitted_events:
- subscription_included_badge_rendered

state_model:
- included_state_true
- included_state_false
- included_state_unknown

promotion_caution:
- do not merge with entitlement logic
- keep wording app-agnostic

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
