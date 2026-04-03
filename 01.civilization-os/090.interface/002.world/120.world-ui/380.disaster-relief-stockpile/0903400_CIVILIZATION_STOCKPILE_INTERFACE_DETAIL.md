# ============================================================
# CIVILIZATION STOCKPILE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for reserve stock and release handling.

required_fields:
- lot_code or order_code
- reserve_type
- stored_quantity
- approval_basis where applicable
- correlation_id

success_condition:
- stockpile request classified and routed safely

failure_condition:
- invalid target
- missing reserve or approval basis
- incompatible reserve handling
