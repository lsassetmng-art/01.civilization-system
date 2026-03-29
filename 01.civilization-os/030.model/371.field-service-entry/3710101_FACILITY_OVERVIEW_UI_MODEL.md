# ============================================================
# FACILITY OVERVIEW UI MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: facility-overview-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines overview UI behavior
for facilities that should not open
a service directly on first tap.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_overview_fields:
- facility_id
- facility_name
- facility_type
- operator_name
- location_label
- operating_state
- primary_services
- tenant_count
- access_notes
- management_available
- alerts_present


# ============================================================
# 3. OVERVIEW ACTIONS
# ============================================================

overview_actions:
- open_primary_service
- open_tenant_list
- open_building_info
- open_operator_profile
- open_management_entry
- return_to_field_map


# ============================================================
# 4. FACILITY TYPES USING OVERVIEW-FIRST
# ============================================================

overview_first_types:
- large_government_complex
- major_medical_complex
- large_school_complex
- transport_hub
- military_support_complex
- major_mixed_service_facility


# ============================================================
# 5. FINAL RULE
# ============================================================

Facility overview must act as
a routing surface for complex facilities,
not as a replacement for service UI.
