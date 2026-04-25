# ============================================================
# MARKETPLACE SORT PANEL COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Marketplace Sort Panel Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Marketplace Sort Panel Common
as a reusable discovery-sort feature family
for marketplace and catalog applications.

canonical_responsibility:
- expose sort option controls
- normalize sort-state selection
- support newest/oldest/popularity/best-selling/price/title patterns
- expose active sort summary
- normalize sort behavior for consumer apps

not_responsible_for:
- backend ranking engine ownership
- listing layout ownership
- StaticArtOS-specific taxonomy
- filter engine ownership

reuse_scope:
- marketplace applications
- catalog applications
- discovery surfaces
- list/grid browsing applications

required_inputs:
- sort_context_id
- current_sort_state
- supported_sort_options
- default_sort_option
- sort_profile

emitted_events:
- sort_panel_opened
- sort_option_changed
- sort_apply_requested
- sort_reset_requested
- sort_panel_closed

state_model:
- sort_idle
- sort_editing
- sort_dirty
- sort_applied
- sort_reset

ui_boundary:
- sort option list
- active sort summary
- apply/reset controls

promotion_caution:
- do not merge with filter panel
- do not embed ranking logic
- do not hard-code marketplace-specific wording beyond generic option families

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
