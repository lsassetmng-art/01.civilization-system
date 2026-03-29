# ============================================================
# NATION DETAIL POWER ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: power-route-ui-and-political-binding
component: nation-detail-power-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY BLOCKS
# ============================================================

entry_blocks:
- route_to_head_of_state_summary
- current_legitimacy_structure
- succession_or_election_entry
- crisis_route_entry
- power_bloc_summary
- ruler_support_structure


# ============================================================
# 2. RULES
# ============================================================

rules:
- nation detail is the main entry for nation-scale power route overview
- the main route to power must differ by nation
- crisis routes should not dominate ordinary overview unless activated
- current ruler support structure should be visible in explainable terms


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation detail
must show how power is actually reached
in this nation.
