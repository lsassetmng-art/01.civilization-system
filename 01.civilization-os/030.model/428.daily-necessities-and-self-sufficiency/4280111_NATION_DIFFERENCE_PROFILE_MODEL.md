# ============================================================
# NATION DIFFERENCE PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: nation-difference-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. DIFFERENCE AXES
# ============================================================

difference_axes:
- food_market_dependency
- welfare_coverage_strength
- ration_strength
- self_sufficiency_support
- urban_garden_permissiveness
- livestock_permissiveness
- local_direct_sale_permissiveness
- shortage_penalty_severity


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation difference
must influence everyday survival behavior.
