# ============================================================
# MILITARY INFRASTRUCTURE UI COPY MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-infrastructure-ui-copy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COPY THEMES
# ============================================================

copy_themes:
- default_rule
- override_rule
- final_effective_rule
- permission_required
- approval_required
- not_available_in_this_nation
- military_intake_open
- infrastructure_authority_required


# ============================================================
# 2. FINAL RULE
# ============================================================

UI copy
must distinguish rule origin,
effective result,
and actionability clearly.
