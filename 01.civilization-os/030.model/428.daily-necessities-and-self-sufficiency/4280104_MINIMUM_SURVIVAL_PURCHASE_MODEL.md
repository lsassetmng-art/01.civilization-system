# ============================================================
# MINIMUM SURVIVAL PURCHASE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: minimum-survival-purchase

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRIGGER CONDITIONS
# ============================================================

trigger_conditions:
- food_stock_below_minimum_threshold
- daily_necessity_stock_below_minimum_threshold
- hunger_or_hygiene_risk_above_warning
- actor_not_in_purchase_block_state


# ============================================================
# 2. PURCHASE RULE
# ============================================================

purchase_rule:
- if national_currency is sufficient,
  minimum basket is auto-purchased
- minimum basket is not luxury consumption
- minimum basket prioritizes survival and hygiene continuity


# ============================================================
# 3. FINAL RULE
# ============================================================

Minimum survival purchase
must protect life continuity first.
