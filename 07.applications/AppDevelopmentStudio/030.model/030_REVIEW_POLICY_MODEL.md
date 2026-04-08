# ============================================================
# REVIEW POLICY MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines configurable review and approval behavior.

definition:
review_policy represents the configured review and approval control
applied to one or more artifact classes or action classes.

minimum_fields:
- review_policy_id
- policy_name
- design_review_mode
- code_review_mode
- sql_review_mode
- git_review_mode
- apply_review_mode
- design_approval_mode
- code_approval_mode
- sql_approval_mode
- git_push_approval_mode
- safety_escalation_enabled
- status
- created_at
- updated_at

review_mode_examples:
- mandatory
- recommended
- optional
- skipped

approval_mode_examples:
- mandatory
- optional
- auto_approved

notes:
Review skipping is allowed by design, but may be overridden by safety escalation.
