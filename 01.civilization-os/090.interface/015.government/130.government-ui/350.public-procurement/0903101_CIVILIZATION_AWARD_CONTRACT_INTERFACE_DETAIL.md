# ============================================================
# CIVILIZATION AWARD CONTRACT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for awards and contracts.

required_fields:
- decision_code or contract_code
- winning_bid_ref where applicable
- supplier_scope
- approval_basis
- correlation_id

compatibility_rule:
Award and contract interfaces must expose explicit bid-to-contract semantics.
