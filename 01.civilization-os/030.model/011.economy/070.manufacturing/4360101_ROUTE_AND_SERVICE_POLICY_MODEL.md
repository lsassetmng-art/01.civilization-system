# ============================================================
# ROUTE AND SERVICE POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: railway-and-logistics-detailed-configuration-and-auto-operation
component: route-and-service-policy

owner: Boss
prepared_by: Zero


route_service_policies:
- passenger_priority
- freight_priority
- balanced_service
- peak_capacity_priority
- rural_access_priority
- express_service_priority
- resilience_priority
- strategic_supply_priority


# FINAL RULE

Route and service policy
must shape utilization and delay risk.
