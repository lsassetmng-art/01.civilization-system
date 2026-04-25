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
