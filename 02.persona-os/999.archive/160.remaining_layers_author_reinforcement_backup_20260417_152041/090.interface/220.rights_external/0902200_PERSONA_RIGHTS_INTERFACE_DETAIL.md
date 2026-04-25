# ============================================================
# PERSONA RIGHTS INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for persona rights lifecycle handling.

required_fields:
- license_code or grant_code or transfer_ref or release_code or package_code
- source_persona_id or source_owner_scope
- authority_basis
- contract basis where applicable
- correlation_id

compatibility_rule:
Persona rights interfaces must remain authority-aware and contract-aware.
