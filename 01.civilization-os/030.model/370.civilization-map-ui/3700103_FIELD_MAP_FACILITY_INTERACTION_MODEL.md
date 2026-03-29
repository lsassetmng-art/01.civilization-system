# ============================================================
# FIELD MAP FACILITY INTERACTION MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: field-map-facility-interaction

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INTERACTION CLASSES
# ============================================================

interaction_classes:
- direct_service_facility
- overview_first_facility
- multi_tenant_building
- creator_owned_editable_facility
- non_editable_public_facility


# ============================================================
# 2. DIRECT SERVICE FACILITIES
# ============================================================

direct_service_facility_examples:
- marketplace
- bank
- securities
- user_company_direct_store
- single_function_station_service
- single_function_counter

direct_service_rule:
- tap opens service UI directly


# ============================================================
# 3. OVERVIEW-FIRST FACILITIES
# ============================================================

overview_first_facility_examples:
- large_government_complex
- large_hospital
- major_school
- transport_hub
- military_support_complex

overview_first_rule:
- tap opens facility overview
- user then selects a service or subfunction


# ============================================================
# 4. CREATOR-OWNED EDITABLE FACILITIES
# ============================================================

creator_owned_editable_rule:
- normal tap opens use or overview
- explicit manage path opens builder or editor
- manage path may be button, long press, or management mode


# ============================================================
# 5. FINAL RULE
# ============================================================

Field map must prioritize use by default
and management by explicit intent.
