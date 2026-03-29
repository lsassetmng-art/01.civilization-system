# ============================================================
# APPROVAL MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: approval-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

approval_mode_enum:
- no_extra_approval
- operator_approval
- city_approval
- nation_approval
- multi_authority_approval
- emergency_override_approval


# ============================================================
# 2. FINAL RULE
# ============================================================

Approval mode
defines what extra authorization
is needed before execution.
