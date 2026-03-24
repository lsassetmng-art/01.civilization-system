# ============================================================
# PERSONA EXTERNAL CONTRACT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for external contract and compatibility handling.

required_fields:
- contract_code or review_ref
- producer_scope
- consumer_scope
- schema_hash
- correlation_id

success_condition:
- external contract request classified and routed safely

failure_condition:
- invalid target
- missing producer, consumer, or schema basis
- incompatible contract handling
