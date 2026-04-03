# ============================================================
# DIPLOMACY ACTION SET MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-diplomacy-play
component: diplomacy-action-set

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTIONS
# ============================================================

actions:
- alliance_offer
- defense_pact
- sanction
- trade_restriction
- recognition_change
- ceasefire_offer
- military_access_request
- border_warning
- covert_support


# ============================================================
# 2. FINAL RULE
# ============================================================

Diplomacy actions
must affect trust,
trade,
military posture,
and domestic narrative.
