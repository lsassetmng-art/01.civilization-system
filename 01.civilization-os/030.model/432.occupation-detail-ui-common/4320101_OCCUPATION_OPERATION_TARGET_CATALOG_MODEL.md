# ============================================================
# OCCUPATION OPERATION TARGET CATALOG MODEL
# ============================================================

status: canonical
layer: model
scope: occupation-detail-ui-common
component: occupation-operation-target-catalog

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TARGET CATALOG
# ============================================================

occupation_operation_targets:
- retail
- food_service
- agriculture
- livestock
- fishery
- food_processing
- manufacturing
- railway_operation
- bus_operation
- logistics_operation
- hospital_operation
- school_operation
- construction_operation
- real_estate_management
- media_operation
- military_base_operation
- administration_operation


# ============================================================
# 2. FINAL RULE
# ============================================================

Detailed occupation UI
must reference an explicit target catalog.
