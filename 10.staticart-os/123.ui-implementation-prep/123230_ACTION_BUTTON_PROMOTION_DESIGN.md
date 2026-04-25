# ============================================================
# ACTION BUTTON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: implementation-basis
component_name: ActionButton
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for ActionButton
as a reusable governed-action primitive.

canonical_responsibility:
- render enabled action
- render disabled action
- expose disabled reason text
- expose action importance style
- expose loading/submitting state
- support generic governed-action surfaces

not_responsible_for:
- StaticArtOS-specific labels
- permission engine logic
- business decision logic
- app-specific confirmation policies

reuse_scope:
- creator apps
- admin apps
- governed-action screens
- review flows
- marketplace/library actions

required_inputs:
- label
- action_style
- enabled_flag
- disabled_reason_or_null
- submitting_flag
- icon_or_null
- width_profile
- emphasis_level

emitted_events:
- action_requested
- disabled_action_attempted
- button_rendered

state_model:
- action_enabled
- action_disabled
- action_submitting
- action_completed
- action_failed_displayed

ui_boundary:
- label
- icon
- disabled reason
- submitting indicator
- style variant

promotion_caution:
- do not embed StaticArtOS-specific wording
- do not embed app-specific permission logic
- do not tie to one confirmation modal pattern

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
