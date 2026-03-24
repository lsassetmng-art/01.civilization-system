# ============================================================
# CIVILIZATION TRADE CONTROL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for trade permits and controls.

required_fields:
- permit_code
- goods_scope
- target_scope
- approval_basis
- correlation_id

compatibility_rule:
Trade-control interfaces must expose explicit goods and restriction semantics.
