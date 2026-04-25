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

# EXACT READY INTERFACE REINFORCEMENT

status_extension: author-reviewed-with-interface-reinforcement
reinforced_at: 20260417_152041
domain: interface

minimum_interface_requirements:
- define request or input shape
- define response or output shape
- define required identifiers
- define status or result family
- define error family where applicable

mandatory_interface_controls:
- no ambiguous field meaning
- no missing identifier in terminal result
- no undocumented reject family

minimum_interface_acceptance_targets:
- valid input and output example
- reject or error example
- result code example where applicable
