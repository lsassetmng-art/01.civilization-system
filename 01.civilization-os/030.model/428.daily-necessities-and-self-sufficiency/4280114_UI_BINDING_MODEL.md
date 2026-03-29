# ============================================================
# DAILY NECESSITIES AND SELF SUFFICIENCY UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: daily-necessities-and-self-sufficiency-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI SURFACES
# ============================================================

ui_surfaces:
- personal_profile_surface
- household_surface
- city_builder_surface
- field_map_surface
- local_market_surface
- welfare_status_surface
- shortage_alert_surface


# ============================================================
# 2. REQUIRED BLOCKS
# ============================================================

required_blocks:
- auto_purchase_mode_summary
- minimum_survival_basket_summary
- national_currency_usage_summary
- civ_cash_support_summary
- self_sufficiency_output_summary
- surplus_sales_summary
- welfare_or_ration_status_summary


# ============================================================
# 3. FINAL RULE
# ============================================================

UI must make essential life continuity visible
without forcing tedious manual shopping.
