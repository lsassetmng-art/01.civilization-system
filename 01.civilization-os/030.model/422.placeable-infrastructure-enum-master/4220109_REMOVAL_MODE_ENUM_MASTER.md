# ============================================================
# REMOVAL MODE ENUM MASTER
# ============================================================

status: canonical
layer: model
scope: placeable-infrastructure-enum-master
component: removal-mode-enum-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENUM VALUES
# ============================================================

removal_mode_enum:
- not_removable
- authority_only_removal
- approval_required_removal
- emergency_removal
- strategic_removal_restricted


# ============================================================
# 2. FINAL RULE
# ============================================================

Removal mode
defines when infrastructure
may be dismantled or cleared.
