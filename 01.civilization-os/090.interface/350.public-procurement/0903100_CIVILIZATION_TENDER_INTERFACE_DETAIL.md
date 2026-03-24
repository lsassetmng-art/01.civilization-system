# ============================================================
# CIVILIZATION TENDER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for tenders and bids.

required_fields:
- plan_code or notice_code
- bidder_scope where applicable
- bid_value where applicable
- budget_basis
- correlation_id

success_condition:
- tender request classified and routed safely

failure_condition:
- invalid target
- missing budget or qualification basis
- incompatible tender handling
