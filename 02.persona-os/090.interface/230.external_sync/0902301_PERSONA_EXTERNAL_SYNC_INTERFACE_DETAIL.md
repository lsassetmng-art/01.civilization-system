# ============================================================
# PERSONA EXTERNAL SYNC INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for external sync intake and dispatch handling.

required_fields:
- inbox_ref or outbox_ref
- target_scope or source_scope
- source_contract_code
- payload_hash
- correlation_id

compatibility_rule:
External sync interfaces must remain contract-aware and payload-aware.

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
