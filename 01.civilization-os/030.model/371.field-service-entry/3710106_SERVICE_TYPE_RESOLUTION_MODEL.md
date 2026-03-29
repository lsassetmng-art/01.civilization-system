# ============================================================
# SERVICE TYPE RESOLUTION MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: service-type-resolution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INPUTS
# ============================================================

resolution_inputs:
- object_id
- object_type
- facility_type
- tenant_type
- operator_type
- nation_context
- building_context
- permission_context


# ============================================================
# 2. OUTPUTS
# ============================================================

resolution_outputs:
- marketplace_ui
- bank_ui
- securities_ui
- company_direct_store_ui
- public_service_counter_ui
- clinic_ui
- station_service_ui
- religion_service_ui
- overview_ui
- restricted_access_notice


# ============================================================
# 3. RESOLUTION RULES
# ============================================================

resolution_rules:
- direct_service_facility resolves directly to canonical service UI
- multi_tenant_building resolves to tenant list before service UI
- unknown or incomplete service profile resolves to overview_ui
- blocked permission resolves to restricted_access_notice
- inactive service resolves to inactive_service_notice_or_overview


# ============================================================
# 4. FINAL RULE
# ============================================================

Every field object must resolve
to one clear use outcome,
overview outcome,
or restriction outcome.
