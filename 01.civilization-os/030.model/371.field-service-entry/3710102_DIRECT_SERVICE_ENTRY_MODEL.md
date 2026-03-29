# ============================================================
# DIRECT SERVICE ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: direct-service-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines direct entry routing
for single-function facilities.


# ============================================================
# 2. DIRECT ENTRY FACILITY TYPES
# ============================================================

direct_entry_facility_types:
- marketplace
- bank
- securities
- user_company_direct_store
- single_service_counter
- small_clinic
- small_station_service
- shrine_or_small_temple_service


# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

direct_entry_fields:
- facility_id
- service_type
- service_ui_target
- operator_profile
- nation_context
- permission_context
- quick_notice_supported
- management_available


# ============================================================
# 4. DIRECT ENTRY RULE
# ============================================================

direct_entry_rule:
- normal tap opens service_ui_target
- service_ui_target must be canonical for service_type
- context banner may be added
- context banner must not redefine the service structure


# ============================================================
# 5. FINAL RULE
# ============================================================

Direct entry exists to minimize friction
for facilities whose meaning is already obvious.
