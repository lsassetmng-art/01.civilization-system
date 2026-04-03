# ============================================================
# PERMISSION EVALUATION RESULT MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: permission-evaluation-result

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESULT STATES
# ============================================================

result_states:
- allowed
- allowed_with_approval
- overview_only
- blocked
- blocked_sensitive
- blocked_authority_mismatch


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- actor_class
- action_type
- target_class
- authority_scope
- result_state
- reason_code
- ui_visibility_state
- approval_required_flag


# ============================================================
# 3. FINAL RULE
# ============================================================

Permission evaluation
must produce a stable result
that both execution and UI can share.
