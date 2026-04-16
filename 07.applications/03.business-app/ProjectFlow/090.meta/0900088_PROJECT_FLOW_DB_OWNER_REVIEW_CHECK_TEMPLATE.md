# ============================================================
# PROJECT FLOW DB OWNER REVIEW CHECK TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for running DB-owner review.

review_fields:
- review_date
- reviewer
- schema_confirmation_result
- migration_order_result
- constraint_hardening_result
- trigger_rollout_result
- rls_design_result
- blocked_items
- followup_actions
- summary_comment

important_rule:
This template is for DB execution-readiness review,
not for reopening broad application design.
