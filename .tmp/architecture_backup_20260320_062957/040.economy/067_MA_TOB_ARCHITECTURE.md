# ============================================================
# M&A / TOB ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
M&A and TOB govern structured corporate control transfer.

purpose:
- support merger, acquisition, rescue, and hostile takeover scenarios
- connect capital, law, governance, and market control

operation_types:
- merger
- acquisition
- rescue_acquisition
- tender_offer
- mbo

rules:
- corporate control transfer must be explicit
- tender offers apply only where listing structure allows
- defense measures must be represented as explicit legal/company actions
- state does not pre-approve company strategy by default, but law may constrain it

defense_measures:
- white_knight
- poison_pill
- mbo
- capital_increase
- employee_shareholding_defense

event_flow:
- acquisition_intent_declared
- legal_review_requested
- public_notice_published
- offer_opened
- control_threshold_reached
- control_transfer_finalized

integration_points:
- stock
- company
- law
- official_gazette
- market

constitution_alignment:
- explicit control transfer only
- auditable strategic action path
- no silent change of controlling owner

final_rule:
Corporate control must never change through hidden mutation;
it must be transferred through explicit legal and market events.
