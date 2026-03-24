# ============================================================
# CIVILIZATION RECYCLING INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for recycling and waste recovery.

required_fields:
- batch_ref
- input_waste_code
- recovered_output_code
- processed_quantity
- correlation_id

compatibility_rule:
Recycling interfaces must expose explicit material conversion semantics.
