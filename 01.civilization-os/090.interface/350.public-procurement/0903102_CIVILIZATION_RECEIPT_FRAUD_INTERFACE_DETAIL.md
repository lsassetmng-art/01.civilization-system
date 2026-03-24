# ============================================================
# CIVILIZATION RECEIPT FRAUD INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for receipt inspection and fraud cases.

required_fields:
- inspection_ref or case_ref
- source_contract_code
- evidence summary where applicable
- inspected_quantity where applicable
- correlation_id

compatibility_rule:
Receipt and fraud interfaces must remain contract-aware and evidence-aware.
