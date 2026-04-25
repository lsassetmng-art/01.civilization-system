# ============================================================
# MARKETPLACE LISTING COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Marketplace Listing Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Marketplace Listing Common
as a reusable listing/catalog surface family
for marketplace-connected applications.

canonical_responsibility:
- render listing collection surfaces
- support tab-based listing organization
- support card-based item presentation
- expose owned / included / sample / status indicators
- expose reusable list-level CTA entry points
- normalize listing surface behavior for consumer apps

not_responsible_for:
- payment execution
- product-detail engine ownership
- ranking algorithm ownership
- search backend ownership
- StaticArtOS-specific marketplace wording

reuse_scope:
- marketplace-connected applications
- creator catalog applications
- digital asset catalog applications
- content storefront surfaces
- owned/included product listing surfaces

required_inputs:
- listing_context_id
- item_collection
- tab_definitions_or_null
- card_render_profile
- ownership_projection_or_null
- subscription_projection_or_null
- sample_projection_or_null
- sort_state_or_null
- permission_context

emitted_events:
- listing_opened
- listing_tab_changed
- listing_item_open_requested
- listing_primary_action_requested
- listing_secondary_action_requested
- listing_sort_changed
- listing_closed

state_model:
- listing_loading
- listing_ready
- listing_empty
- listing_error
- listing_forbidden

ui_boundary:
- tab strip
- card grid/list region
- ownership/inclusion/sample indicators
- list-level state handling
- generic CTA hooks

promotion_caution:
- do not merge listing surface with filter logic
- do not merge listing surface with product-detail surface
- do not hard-code StaticArtOS marketplace text
- do not absorb ranking logic into the surface family

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
