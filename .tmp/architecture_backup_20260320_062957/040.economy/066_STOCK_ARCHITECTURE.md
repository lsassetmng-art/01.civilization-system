# ============================================================
# STOCK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Stock is a formal ownership share in a listed company.

purpose:
- represent partial ownership
- connect capital markets, governance, and control contests
- support dividends, voting, and transferability

listing_states:
- private
- listed
- suspended
- delisted

shareholder_types:
- player
- ai_human
- institutional_actor_if_defined

share_rights:
- dividend_right
- voting_right
- transfer_right
- takeover_exposure

rules:
- stock ownership changes require explicit trade or transfer events
- listing state changes must be explicit and published
- delisting must not silently erase shareholder history
- free float and founder holdings must be modeled explicitly

event_flow:
- listing_requested
- listing_approved
- share_issued
- share_transferred
- dividend_declared
- delisting_requested
- delisting_published

integration_points:
- company
- market
- ma_tob
- law
- official_gazette

constitution_alignment:
- ownership lineage required
- no silent shareholder rewrite
- auditable capital events only

final_rule:
Every stock ownership and listing change must be explicit,
traceable, and legally grounded.
