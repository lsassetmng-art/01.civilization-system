# ============================================================
# BUSINESS CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the interface detail for BusinessOS core operations.

BusinessOS is primarily user-scoped.
Core interfaces must therefore resolve from:
- user_id
- workspace_id or workspace_code
- app/module context
- request_ref or correlation_id
- ERP-send company context only when explicitly needed

required_identifiers:
- user_id or business_user_id
- workspace_id or workspace_code or request_ref
- app_code or module_code where relevant
- authority_basis
- correlation_id

optional_identifiers:
- erp_company_context_id
- erp_mapping_profile_id
- erp_payload_type

error_conditions:
- missing user basis
- missing workspace or request basis
- missing authority basis
- missing ERP company context when ERP-send is requested
- invalid app/module context
- invalid mapping profile where required

rules:
- default BusinessOS interface resolution is user/workspace-first
- ERP-send company context is optional except for outbound ERP-send actions
- tenant_code is not a valid default root identifier for BusinessOS core interfaces

final_rule:
BusinessOS core interfaces must not assume company-tenant scope.
