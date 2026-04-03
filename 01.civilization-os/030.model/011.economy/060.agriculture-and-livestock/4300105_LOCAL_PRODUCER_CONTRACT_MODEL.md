# ============================================================
# LOCAL PRODUCER CONTRACT MODEL
# ============================================================

status: canonical
layer: model
scope: agriculture-retail-local-supply-linkage
component: local-producer-contract

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CONTRACT FIELDS
# ============================================================

contract_fields:
- producer_object_ref
- retail_facility_ref
- product_type
- intake_priority
- expected_volume
- freshness_requirement
- pricing_mode
- emergency_supply_flag
- active_state


# ============================================================
# 2. FINAL RULE
# ============================================================

Producer-retail linkage
must support explicit contract behavior.
