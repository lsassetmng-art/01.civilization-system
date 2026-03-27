# ============================================================
# CIVILIZATION NATION BUILDER EDITOR FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for zoning editor and market tier editor
inside CivilizationOS nation builder.


# ============================================================
# 1. ZONING EDITOR FLOW
# ============================================================

open nation draft
-> open zoning editor
-> assign or edit zones
-> configure allowance/restrictions
-> validate zoning draft
-> save zoning draft state


# ============================================================
# 2. MARKET TIER EDITOR FLOW
# ============================================================

open nation draft
-> open market tier editor
-> select listing style
-> create/edit market tiers
-> configure thresholds and eligibility
-> validate listing-style draft
-> save listing-style draft state


# ============================================================
# 3. FINAL FLOW RULE
# ============================================================

Nation builder editor flow must remain:
- draft-aware
- zoning-aware
- market-tier-aware
- validation-aware
