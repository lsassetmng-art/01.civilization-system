# ============================================================
# SCREEN SHELL PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: implementation-basis
component_name: ScreenShell
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for ScreenShell
as a reusable top-level screen/frame primitive.

canonical_responsibility:
- page title / subtitle frame
- top-level content shell
- common screen padding and safe layout boundary
- optional toolbar / action slot placement
- load-state boundary placement
- stable content region contract

not_responsible_for:
- StaticArtOS-specific data fetching
- workflow-specific state logic
- domain-specific CTA wording
- screen-local business rules

reuse_scope:
- creator screens
- admin screens
- marketplace-like screens
- library-like screens
- multi-app top-level content screens

required_inputs:
- title
- subtitle_or_null
- top_action_slot_or_null
- secondary_action_slot_or_null
- load_state_or_null
- content_region
- screen_density_profile
- permission_summary_or_null

emitted_events:
- top_action_requested
- secondary_action_requested
- shell_opened
- shell_closed

state_model:
- shell_idle
- shell_loading
- shell_ready
- shell_error
- shell_forbidden

ui_boundary:
- common outer shell
- title/subtitle area
- action slot area
- load/error/forbidden placement
- content region frame

promotion_caution:
- do not embed StaticArtOS-only wording
- do not embed feature-specific navigation assumptions
- do not bind to one screen router
- do not absorb business workflow logic

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
