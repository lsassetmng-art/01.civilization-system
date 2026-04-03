# ============================================================
# TENANT FUNCTION RESOLUTION MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: tenant-function-resolution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines how a selected tenant
resolves to the correct service UI.


# ============================================================
# 2. RESOLUTION INPUTS
# ============================================================

resolution_inputs:
- tenant_id
- tenant_type
- tenant_service_profile
- operator_profile
- nation_context
- permission_context
- building_context


# ============================================================
# 3. RESOLUTION OUTPUTS
# ============================================================

resolution_outputs:
- marketplace_ui
- bank_ui
- securities_ui
- company_direct_store_ui
- service_counter_ui
- clinic_or_medical_ui
- education_subservice_ui
- religion_subservice_ui
- entertainment_ui
- overview_fallback_ui


# ============================================================
# 4. FALLBACK RULES
# ============================================================

fallback_rules:
- missing service profile uses overview_fallback_ui
- blocked permission uses restricted_access_notice
- inactive tenant uses inactive_tenant_notice
- invalid operator mapping uses management_review_notice


# ============================================================
# 5. FINAL RULE
# ============================================================

Tenant selection must always resolve
to one clear service outcome
or one clear restriction outcome.
