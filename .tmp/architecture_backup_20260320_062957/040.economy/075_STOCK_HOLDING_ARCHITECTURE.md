# ============================================================
# STOCK HOLDING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Stock holding is the authoritative record of share ownership.

purpose:
- store player and actor share ownership
- support dividends, voting, transfer, and control analysis
- separate holding record from market price

core_entities:
- stock_holding
- stock_transfer_event
- dividend_entitlement

stock_holding:
- holding_id
- holder_actor_id
- company_id
- quantity
- average_acquisition_price
- acquired_at
- last_position_change_at

rules:
- stock holding belongs in economy domain
- ownership changes only through explicit stock transfer or issuance events
- market price changes do not directly mutate quantity
- holding history must remain auditable

event_flow:
- share_issued
- share_transferred
- holding_position_updated
- dividend_declared
- dividend_entitlement_recorded

constitution_alignment:
- ownership lineage required
- no silent reassignment
- event-driven transfer only

final_rule:
Share ownership must be stored as explicit stock holding records
inside the economy domain.
