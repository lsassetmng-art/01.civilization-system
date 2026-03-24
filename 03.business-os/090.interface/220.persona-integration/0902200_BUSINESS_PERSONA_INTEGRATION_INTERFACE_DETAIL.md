# ============================================================
# BUSINESS PERSONA INTEGRATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for business persona integration lifecycle handling.

required_fields:
- binding_code or entitlement_code or request_ref or sync_ref
- business_actor_scope
- persona_id or source_contract_code
- authority_basis
- correlation_id

compatibility_rule:
Business persona integration interfaces must remain actor-aware and contract-aware.
