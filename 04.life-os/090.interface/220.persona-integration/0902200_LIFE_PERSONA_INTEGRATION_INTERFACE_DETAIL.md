# ============================================================
# LIFE PERSONA INTEGRATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for life persona integration lifecycle handling.

required_fields:
- request_ref or sync_ref or consent_code
- persona_id
- consent_basis
- source_contract_code where applicable
- correlation_id

compatibility_rule:
Life persona integration interfaces must remain persona-aware and consent-aware.
