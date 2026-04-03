# ============================================================
# COMMON EXAM ROUTE BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: common-exam-and-replay-mode
component: common-exam-route-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROUTE BINDINGS
# ============================================================

route_bindings:
- higher_education_admission
- scholarship_evaluation
- public_service_foundation_route
- elite_school_route
- regional_priority_route
- institution_specific_secondary_selection


# ============================================================
# 2. FINAL RULE
# ============================================================

Common exam score
must be bindable to multiple downstream routes.
