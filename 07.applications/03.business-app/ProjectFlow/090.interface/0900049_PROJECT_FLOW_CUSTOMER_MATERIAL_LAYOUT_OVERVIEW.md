# ============================================================
# PROJECT FLOW CUSTOMER MATERIAL LAYOUT OVERVIEW
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines layout principles for customer-facing explanation materials.

layout_principles:
- explanation must be easy to follow
- milestone and status should be visually clear
- tables should remain readable when exported
- wording-edit areas should stay near preview areas
- internal-only detail should be suppressible
- external-use review context should remain visible

common_layout_blocks:
- material header
- project summary strip
- material-specific main body
- wording adjustment area
- visible item control area
- export action area

common_header_fields:
- project_name
- material_type
- reporting_or_schedule_period
- review_state
- last_updated_at
