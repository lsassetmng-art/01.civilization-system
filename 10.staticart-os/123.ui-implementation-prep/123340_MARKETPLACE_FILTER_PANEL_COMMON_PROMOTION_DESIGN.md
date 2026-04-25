# ============================================================
# MARKETPLACE FILTER PANEL COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Marketplace Filter Panel Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Marketplace Filter Panel Common
as a reusable discovery/filter feature family
for search-heavy and catalog-heavy applications.

canonical_responsibility:
- expose category filter controls
- expose tag filter controls
- expose language filter controls
- expose creator filter controls
- expose price-range filter controls
- expose ownership/inclusion filter controls
- normalize filter-state behavior for consumer apps

not_responsible_for:
- backend query engine ownership
- recommendation ranking logic
- StaticArtOS-specific category taxonomy ownership
- product-card rendering ownership
- marketplace result layout ownership

reuse_scope:
- marketplace applications
- discovery-heavy applications
- search-heavy catalog surfaces
- owned/included library filters
- multi-attribute browsing surfaces

required_inputs:
- filter_context_id
- available_filter_dimensions
- current_filter_state
- category_options_or_null
- tag_options_or_null
- language_options_or_null
- creator_options_or_null
- price_range_profile_or_null
- ownership_filter_support_flag
- subscription_filter_support_flag

emitted_events:
- filter_panel_opened
- category_filter_changed
- tag_filter_changed
- language_filter_changed
- creator_filter_changed
- price_filter_changed
- ownership_filter_changed
- subscription_filter_changed
- filter_reset_requested
- filter_apply_requested
- filter_panel_closed

state_model:
- filter_idle
- filter_editing
- filter_dirty
- filter_applied
- filter_reset
- filter_invalid

ui_boundary:
- filter group sections
- selection/toggle controls
- price range controls
- reset/apply controls
- active filter summary

promotion_caution:
- do not hard-code StaticArtOS taxonomies
- do not merge filter panel with listing layout
- do not embed backend query assumptions
- keep result ranking outside the filter family

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
