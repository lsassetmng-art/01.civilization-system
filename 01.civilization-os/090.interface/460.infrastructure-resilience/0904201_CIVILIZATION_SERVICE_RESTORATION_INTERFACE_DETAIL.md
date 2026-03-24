# ============================================================
# CIVILIZATION SERVICE RESTORATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for restoration and maintenance handling.

required_fields:
- order_code or window_code
- target_service_scope
- restoration summary or maintenance summary
- approval basis
- correlation_id

compatibility_rule:
Restoration interfaces must remain service-aware and order-aware.
