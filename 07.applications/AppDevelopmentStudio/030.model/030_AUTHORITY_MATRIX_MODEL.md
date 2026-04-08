# ============================================================
# AUTHORITY MATRIX MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines role/action authority mapping.

minimum_fields:
- authority_matrix_id
- actor_role
- action_code
- target_scope
- environment_scope
- allowed_flag
- review_requirement
- approval_requirement
- escalation_rule_ref
- created_at
- updated_at
