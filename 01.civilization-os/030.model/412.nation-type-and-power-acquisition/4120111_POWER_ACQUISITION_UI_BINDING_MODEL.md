# ============================================================
# POWER ACQUISITION UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: nation-type-and-power-acquisition
component: power-acquisition-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI SURFACES
# ============================================================

ui_surfaces:
- nation_detail
- political_power_surface
- election_surface
- succession_surface
- military_honor_surface
- party_inner_circle_surface
- personal_profile_surface
- grand_play_summary_surface


# ============================================================
# 2. RULES
# ============================================================

rules:
- UI must show available power acquisition routes by nation
- blocked routes may appear as teaser or locked entries
- legitimacy source must be visible before and after accession
- governance default and nation override must remain distinguishable


# ============================================================
# 3. FINAL RULE
# ============================================================

Power route UI
must explain not only how to rise,
but why a route is valid in this nation.
