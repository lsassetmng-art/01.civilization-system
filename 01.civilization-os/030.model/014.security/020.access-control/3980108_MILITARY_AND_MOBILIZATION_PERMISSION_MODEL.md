# ============================================================
# MILITARY AND MOBILIZATION PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: military-and-mobilization-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MILITARY ACTIONS
# ============================================================

military_actions:
- open_military_facility
- manage_military_facility
- configure_conscription
- open_recruitment
- issue_mobilization
- assign_personnel
- suspend_military_operations


# ============================================================
# 2. RULES
# ============================================================

rules:
- military management requires military-scope authority
- conscription and mobilization require elevated nation or military authority
- ordinary users may at most view public-facing military notices where allowed
- recruitment entry and operational command are distinct permission surfaces


# ============================================================
# 3. FINAL RULE
# ============================================================

Military control must remain
strictly permissioned
and visibly separated
from ordinary public facility actions.
