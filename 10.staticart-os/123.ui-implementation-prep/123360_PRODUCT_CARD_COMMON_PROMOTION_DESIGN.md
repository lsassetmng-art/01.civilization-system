# ============================================================
# PRODUCT CARD COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Product Card Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Product Card Common
as a reusable card-based item summary family
for catalog, commerce, and library-like applications.

canonical_responsibility:
- render thumbnail
- render title and creator summary
- render type/status badges
- render price summary
- render owned / included / sample indicators
- expose primary open/action hooks
- normalize item-card summary behavior for consumer apps

not_responsible_for:
- product-detail engine ownership
- payment execution
- backend pricing logic
- StaticArtOS-specific wording
- result ranking logic

reuse_scope:
- marketplace applications
- catalog applications
- library applications
- owned/included product surfaces
- creator storefront surfaces

required_inputs:
- item_id
- thumbnail_or_null
- title
- creator_summary_or_null
- type_badges_or_null
- price_summary_or_null
- ownership_state_or_null
- inclusion_state_or_null
- sample_state_or_null
- action_profile

emitted_events:
- card_open_requested
- primary_action_requested
- secondary_action_requested
- badge_open_requested

state_model:
- card_loading
- card_ready
- card_disabled
- card_unavailable

ui_boundary:
- thumbnail region
- text summary region
- badge region
- price region
- primary interaction region

promotion_caution:
- do not hard-code StaticArtOS-specific card wording
- do not absorb product-detail behavior
- do not merge ranking logic into card rendering

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
