# ============================================================
# PROJECT FLOW DB OWNER REVIEW HOLD REASON TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Template for recording why DB-owner review is held or partial.

hold_reason_fields:
- unresolved_schema_question
- unresolved_ownership_sensitive_constraint_question
- unresolved_trigger_rollout_question
- unresolved_rls_question
- required_followup
- re_review_condition
