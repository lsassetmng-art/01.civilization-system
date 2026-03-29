# ============================================================
# MULTI TENANT TO SERVICE UI PARITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-service-entry
component: multi-tenant-to-service-ui-parity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the parity rule
between tenant-selected services
and single-function facility services.


# ============================================================
# 2. PARITY RULE
# ============================================================

parity_rule:
- tenant selection must open the same canonical service UI
  used by an equivalent single-function facility
- multi-tenant status changes only the entry route
- multi-tenant status may add context banner information
- multi-tenant status must not create a separate service logic tree


# ============================================================
# 3. ALLOWED CONTEXT DIFFERENCES
# ============================================================

allowed_context_differences:
- building_name
- tenant_name
- floor_or_zone_label
- operator_name
- building_campaign_notice
- co-located_service_shortcuts


# ============================================================
# 4. FORBIDDEN DIFFERENCES
# ============================================================

forbidden_differences:
- separate_service_schema_for_same_service_type
- different_core_purchase_logic_for_same_marketplace_type
- different_core_account_logic_for_same_bank_type
- different_core_trade_logic_for_same_securities_type
- hidden_feature_removal_without_context_explanation


# ============================================================
# 5. FINAL RULE
# ============================================================

Service type determines service UI.
Tenant status determines entry context only.
