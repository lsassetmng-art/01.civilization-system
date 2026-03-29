# ============================================================
# BANK AND SECURITIES ENTRY PARITY MODEL
# ============================================================

status: canonical
layer: model
scope: financial-and-direct-store-services
component: bank-and-securities-entry-parity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PARITY RULE
# ============================================================

parity_rule:
- a bank service opened from tenant selection
  must use the same canonical bank UI
  as a single-function bank facility
- a securities service opened from tenant selection
  must use the same canonical securities UI
  as a single-function securities facility

allowed_context_differences:
- building_name
- tenant_name
- floor_or_zone_label
- operator_name
- building_notice

forbidden_differences:
- different_core_account_schema
- different_core_trade_schema
- hidden_permission_changes
- hidden_fee_changes


# ============================================================
# 2. FINAL RULE
# ============================================================

Service type determines service UI.
Entry route determines banner context only.
