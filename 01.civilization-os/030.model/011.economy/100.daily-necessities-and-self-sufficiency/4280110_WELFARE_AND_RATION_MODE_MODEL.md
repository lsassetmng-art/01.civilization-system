# ============================================================
# WELFARE AND RATION MODE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: welfare-and-ration-mode

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MODES
# ============================================================

welfare_and_ration_modes:
- market_purchase_priority
- household_support_priority
- welfare_support_priority
- ration_priority
- military_priority_ration
- mixed_support_mode


# ============================================================
# 2. FINAL RULE
# ============================================================

Nations may differ
in how essential shortages are resolved.
