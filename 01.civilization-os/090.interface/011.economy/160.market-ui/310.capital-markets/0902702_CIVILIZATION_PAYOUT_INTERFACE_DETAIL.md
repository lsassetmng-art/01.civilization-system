# ============================================================
# CIVILIZATION PAYOUT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for dividends and exit settlements.

required_fields:
- distribution_ref or settlement_ref
- source_event_ref
- payable_summary
- holder_scope where applicable
- correlation_id

compatibility_rule:
Payout interfaces must remain ownership-aware and event-aware.
