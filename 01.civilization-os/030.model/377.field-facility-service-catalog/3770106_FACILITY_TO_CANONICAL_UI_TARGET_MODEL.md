# ============================================================
# FACILITY TO CANONICAL UI TARGET MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: facility-to-canonical-ui-target

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL UI TARGETS
# ============================================================

canonical_ui_targets:
- marketplace_ui
- bank_ui
- securities_ui
- national_market_board_ui
- insurance_ui
- real_estate_ui
- recruitment_ui
- company_direct_store_ui
- company_overview_ui
- facility_overview_ui
- tenant_list_ui
- medical_ui
- education_ui
- religion_ui
- transport_ui
- civic_notice_ui


# ============================================================
# 2. TARGET RULES
# ============================================================

target_rules:
- same service type must resolve to same canonical UI regardless of building form
- tenant context may add banner only
- view-only facilities must resolve to view-only targets
- owned overview targets may expose manage path if permitted


# ============================================================
# 3. FINAL RULE
# ============================================================

Canonical UI target determines service truth.
Facility form determines entry route only.
