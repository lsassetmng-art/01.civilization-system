# ============================================================
# INFRASTRUCTURE PERMISSION FEEDBACK UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-permission-feedback-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FEEDBACK STATES
# ============================================================

feedback_states:
- allowed
- allowed_with_approval
- overview_only
- blocked_authority_mismatch
- blocked_protected_corridor
- blocked_governance_mode
- blocked_sensitive_network


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- blocked states should explain which authority is required
- approval-required states should explain what approval is missing
- overview-only states should allow inspection without editing
- feedback should appear close to action entry
- feedback must not falsely imply executable access


# ============================================================
# 3. FINAL RULE
# ============================================================

Permission feedback
must convert governance and authority rules
into understandable user-facing action truth.
