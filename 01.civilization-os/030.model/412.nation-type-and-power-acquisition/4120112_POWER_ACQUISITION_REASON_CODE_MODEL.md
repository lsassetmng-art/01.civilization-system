# ============================================================
# POWER ACQUISITION REASON CODE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: power-acquisition-reason-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REASON CODES
# ============================================================

reason_codes:
- PAR-001 route_available
- PAR-002 route_blocked_by_governance_type
- PAR-003 route_blocked_by_nation_override
- PAR-004 insufficient_public_support
- PAR-005 insufficient_military_support
- PAR-006 insufficient_party_favor
- PAR-007 insufficient_ruler_favor
- PAR-008 insufficient_bloodline_rank
- PAR-009 insufficient_marriage_link
- PAR-010 insufficient_governance_merit
- PAR-011 insufficient_religious_legitimacy
- PAR-012 legitimacy_too_low_after_accession
- PAR-013 crisis_transition_opened_route
- PAR-014 coup_route_high_risk
- PAR-015 revolutionary_route_high_instability


# ============================================================
# 2. FINAL RULE
# ============================================================

Reason codes
must support logs,
UI explanation,
and political play debugging.
