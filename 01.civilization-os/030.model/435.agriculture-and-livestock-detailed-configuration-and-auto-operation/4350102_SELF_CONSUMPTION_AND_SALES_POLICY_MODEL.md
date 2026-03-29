# ============================================================
# SELF CONSUMPTION AND SALES POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-and-livestock-detailed-configuration-and-auto-operation
component: self-consumption-and-sales-policy

owner: Boss
prepared_by: Zero


split_policies:
- self_consumption_heavy
- balanced_split
- local_sale_heavy
- retail_contract_priority
- emergency_reserve_priority
- cooperative_shipment_priority


# FINAL RULE

Agricultural output
must distinguish survival use from commercial use.
