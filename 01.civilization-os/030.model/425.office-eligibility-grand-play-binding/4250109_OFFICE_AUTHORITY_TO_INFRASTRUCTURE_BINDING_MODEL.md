# ============================================================
# OFFICE AUTHORITY TO INFRASTRUCTURE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: office-authority-to-infrastructure-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDINGS
# ============================================================

bindings:
- mayor -> city_scope_infrastructure_action
- prefectural_governor -> prefectural_scope_infrastructure_action
- regional_governor -> regional_scope_infrastructure_action
- minister -> strategic_ministry_infrastructure_action
- civil_service_officer -> office_scope_infrastructure_action
- infrastructure_maintenance_unit -> maintenance_execution_only
- ai_robot_support_unit -> maintenance_execution_only


# ============================================================
# 2. FINAL RULE
# ============================================================

Infrastructure authority
must distinguish legal approval power
from support execution power.
