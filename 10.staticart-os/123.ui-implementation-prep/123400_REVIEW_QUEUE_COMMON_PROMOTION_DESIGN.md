# ============================================================
# REVIEW QUEUE COMMON PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: application-feature
component_name: Review Queue Common
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for Review Queue Common
as a reusable governance/review workflow family
for moderated or approval-driven applications.

canonical_responsibility:
- render pending review list
- expose review action entry points
- expose approve / reject / rework / restrict summary hooks
- expose review state summary
- normalize queue behavior for consumer apps

not_responsible_for:
- exact review decision persistence mapping
- StaticArtOS-specific governance lifecycle enum
- moderation penalty engine ownership
- app-specific review wording

reuse_scope:
- governance-heavy applications
- review-driven applications
- moderated content systems
- approval queue surfaces
- admin review tools

required_inputs:
- queue_context_id
- review_items
- review_profile
- action_set
- state_summary
- permission_context
- filter_state_or_null

emitted_events:
- review_item_open_requested
- approve_requested
- reject_requested
- rework_requested
- restrict_requested
- queue_filter_changed
- queue_refresh_requested

state_model:
- queue_loading
- queue_ready
- queue_empty
- queue_error
- queue_forbidden

ui_boundary:
- queue list region
- state badges/summaries
- review action hooks
- filter/sort header
- empty/error state placement

promotion_caution:
- do not merge queue surface with exact review persistence mapping
- do not hard-code StaticArtOS-specific decision wording
- keep generic state and action surfaces reusable

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
