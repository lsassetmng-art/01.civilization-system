# ============================================================
# STATE PANEL PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: implementation-basis
component_name: StatePanel
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for StatePanel
as a reusable generic state renderer.

canonical_responsibility:
- render loading state
- render empty state
- render error state
- render forbidden state
- render generic fallback state
- expose structured state summary

not_responsible_for:
- product-specific text
- review-specific messaging
- domain-specific retry policy
- backend error conversion logic

reuse_scope:
- creator applications
- admin applications
- catalog applications
- review/governance screens
- general application surfaces

required_inputs:
- state_type
- title_or_null
- message_or_null
- detail_or_null
- action_label_or_null
- action_enabled_flag
- disabled_reason_or_null
- icon_profile_or_null

emitted_events:
- action_requested
- state_panel_opened
- state_panel_closed

state_model:
- panel_loading
- panel_empty
- panel_error
- panel_forbidden
- panel_generic

ui_boundary:
- state icon area
- state title area
- state message area
- optional action area
- optional detail area

promotion_caution:
- do not hard-code StaticArtOS-specific copy
- do not embed domain-specific recovery logic
- do not collapse generic state rendering into feature workflows

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
