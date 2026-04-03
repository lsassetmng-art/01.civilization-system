# ============================================================
# PERMISSION ACTOR CLASS MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: permission-actor-class

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTOR CLASSES
# ============================================================

actor_classes:
- ordinary_user
- creator_owner
- company_operator
- company_admin
- city_operator
- nation_operator
- public_body_operator
- military_operator
- system_operator
- audit_operator


# ============================================================
# 2. FINAL RULE
# ============================================================

Actor class defines
baseline authority posture,
not automatic authority over all targets.
