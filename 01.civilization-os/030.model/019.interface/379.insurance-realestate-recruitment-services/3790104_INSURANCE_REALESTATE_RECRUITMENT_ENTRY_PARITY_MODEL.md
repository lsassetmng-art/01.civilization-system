# ============================================================
# INSURANCE REAL ESTATE RECRUITMENT ENTRY PARITY MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: insurance-realestate-recruitment-entry-parity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PARITY RULE
# ============================================================

parity_rule:
- service opened from tenant selection
  must use the same canonical UI
  as an equivalent single-function facility
- tenant status changes entry route only
- tenant status may add context banner information

allowed_context_differences:
- building_name
- tenant_name
- floor_or_zone_label
- operator_name
- building_notice

forbidden_differences:
- different_core_policy_schema
- different_core_contract_schema
- different_core_application_schema
- hidden_restriction_changes


# ============================================================
# 2. FINAL RULE
# ============================================================

Service type determines service UI.
Entry route determines banner context only.
