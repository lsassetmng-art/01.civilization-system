# ============================================================
# BUSINESS CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for business core lifecycle handling.

required_fields:
- tenant_code or workspace_code or org_code or request_ref
- owner_scope or requester_scope
- authority_basis
- source_state_version where applicable
- correlation_id

success_condition:
- business core request classified and routed safely

failure_condition:
- invalid target
- missing tenant, org, or authority basis
- incompatible business-core handling
