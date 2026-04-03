# ============================================================
# PLACEABLE FACILITY STATUS MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: placeable-facility-status

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CURRENT STATUS
# ============================================================

current_status:
- placeable facility design is substantially completed
- facility families and tap-entry behavior are already designed
- detailed candidate master normalization may still be done later


# ============================================================
# 2. FACILITY CANDIDATE FIELDS WORTH NORMALIZING LATER
# ============================================================

future_normalization_fields:
- facility_type
- facility_category
- operator_class
- tenant_mode
- service_mode
- entry_ui_type
- permission_profile
- infrastructure_link_type


# ============================================================
# 3. FACILITY CATEGORY CANDIDATES
# ============================================================

facility_category_candidates:
- government
- public_service
- education
- healthcare
- finance
- securities
- marketplace
- corporate
- military
- media
- transport_authority
- logistics
- justice
- prison
- religion
- culture
- residential_support


# ============================================================
# 4. FINAL RULE
# ============================================================

Placeable facilities
may be treated as already designed,
while candidate master normalization
remains an optional follow-up step.
