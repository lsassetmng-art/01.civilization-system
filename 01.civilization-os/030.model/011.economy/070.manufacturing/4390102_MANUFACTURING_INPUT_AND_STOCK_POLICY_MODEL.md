# ============================================================
# MANUFACTURING INPUT AND STOCK POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: manufacturing-detailed-configuration-and-auto-operation
component: manufacturing-input-and-stock-policy

owner: Boss
prepared_by: Zero


input_stock_policies:
- low_inventory_cost
- balanced_inventory
- resilience_stock
- local_input_priority
- import_dependency_priority
- critical_component_reserve


# FINAL RULE

Input and stock policy
must shape stoppage risk and cost pressure.
