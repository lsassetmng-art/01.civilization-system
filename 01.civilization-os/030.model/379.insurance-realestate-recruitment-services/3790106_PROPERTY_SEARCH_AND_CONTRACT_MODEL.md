# ============================================================
# PROPERTY SEARCH AND CONTRACT MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: property-search-and-contract

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PROPERTY TYPES
# ============================================================

property_types:
- housing_unit
- apartment
- detached_house
- office_unit
- retail_unit
- mixed_use_unit
- land_plot


# ============================================================
# 2. CONTRACT TYPES
# ============================================================

contract_types:
- lease_contract
- purchase_contract
- reservation_contract
- institution_use_contract


# ============================================================
# 3. FINAL RULE
# ============================================================

Real estate service must distinguish
between discovery,
comparison,
reservation,
and final contract flow.
