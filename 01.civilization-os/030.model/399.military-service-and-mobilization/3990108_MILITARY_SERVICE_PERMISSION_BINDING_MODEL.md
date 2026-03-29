# ============================================================
# MILITARY SERVICE PERMISSION BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: military-service-permission-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTION BINDINGS
# ============================================================

action_bindings:
- configure_conscription -> nation_scope_or_military_scope
- open_recruitment -> military_scope_or_nation_scope
- issue_mobilization -> elevated_nation_scope_or_military_scope
- assign_personnel -> military_scope
- manage_military_facility -> military_scope
- respond_to_notice -> individual_actor_scope
- volunteer_apply -> ordinary_user_scope


# ============================================================
# 2. FINAL RULE
# ============================================================

Military service permissions
must reflect sovereignty,
command,
and personal response separately.
