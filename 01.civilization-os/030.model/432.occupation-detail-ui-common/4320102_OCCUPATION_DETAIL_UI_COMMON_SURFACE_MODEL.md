# ============================================================
# OCCUPATION DETAIL UI COMMON SURFACE MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-detail-ui-common
component: occupation-detail-ui-common-surface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON SURFACES
# ============================================================

common_surfaces:
- overview
- configuration
- auto_operation
- performance
- alerts
- intervention
- inspection_or_audit
- staffing
- supply_or_input
- finance_or_cost


# ============================================================
# 2. OPTIONAL SURFACES
# ============================================================

optional_surfaces:
- customer_or_user_demand
- safety_and_sanitation
- route_or_distribution
- facility_condition
- compliance
- local_linkage
- public_service_effect
- emergency_mode


# ============================================================
# 3. FINAL RULE
# ============================================================

Occupation detail UI
must reuse a common surface vocabulary.
