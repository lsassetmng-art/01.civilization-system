# ============================================================
# HUMAN ONLY OFFICE UI EXPLANATION MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: human-only-office-ui-explanation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED EXPLANATION THEMES
# ============================================================

required_explanation_themes:
- actor_class
- human_category_status
- office_class
- office_type
- human_requirement_profile
- eligibility_state
- blocked_reason
- allowed_support_role_if_any


# ============================================================
# 2. FINAL RULE
# ============================================================

UI must explicitly explain
when an office is blocked
because the actor is non-human category.
