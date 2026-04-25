# ============================================================
# PRODUCT DETAIL SUMMARY COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Product Detail Summary Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Product Detail Summary Common
as a reusable detail-summary feature family
for product, asset, and content detail surfaces.

canonical_responsibility:
- render hero summary
- render creator summary
- render rights summary
- render price summary
- render subscription/inclusion summary
- expose primary and secondary action hooks
- normalize detail-summary behavior for consumer apps

not_responsible_for:
- payment execution
- entitlement engine ownership
- full review/comment system ownership
- StaticArtOS-specific marketplace copy
- backend detail aggregation ownership

reuse_scope:
- marketplace detail pages
- asset detail pages
- creator storefront detail surfaces
- product/content detail surfaces

required_inputs:
- item_id
- hero_media_or_null
- title
- creator_summary_or_null
- rights_summary_or_null
- price_summary_or_null
- subscription_summary_or_null
- action_profile
- availability_state_or_null

emitted_events:
- detail_opened
- primary_action_requested
- secondary_action_requested
- creator_open_requested
- rights_summary_open_requested
- price_summary_open_requested

state_model:
- detail_loading
- detail_ready
- detail_unavailable
- detail_error
- detail_forbidden

ui_boundary:
- hero summary region
- creator summary region
- rights/price/subscription summary region
- primary/secondary action region
- availability state placement

promotion_caution:
- do not merge with product-detail engine ownership
- do not embed exact entitlement resolution logic
- do not hard-code StaticArtOS-specific copy
- do not absorb product card/listing/filter responsibilities

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
