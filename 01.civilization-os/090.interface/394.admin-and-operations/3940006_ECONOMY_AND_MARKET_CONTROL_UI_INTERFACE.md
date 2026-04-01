# ============================================================
# ECONOMY AND MARKET CONTROL UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: economy-and-market-control-ui
component: economy-and-market-control-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the UI interface
for economy and market control
inside Civilization.


# ============================================================
# 2. CANONICAL SCREENS
# ============================================================

Canonical screens:

- economy_market_dashboard_screen
- land_and_asset_market_screen
- stock_and_bond_market_screen
- fx_and_rating_screen
- macro_indicator_screen
- anomaly_review_screen
- recalculation_control_screen
- economy_market_history_screen


# ============================================================
# 3. LAND AND ASSET MARKET SCREEN
# ============================================================

screen_id: land_and_asset_market_screen
route_key: admin/economy/land-and-asset

visible_sections:
- land_price_summary_section
- land_value_profile_section
- region_filter_section
- anomaly_section

actions:
- open_anomaly_review
- trigger_recalculation
- open_economy_market_history


# ============================================================
# 4. FX AND RATING SCREEN
# ============================================================

screen_id: fx_and_rating_screen
route_key: admin/economy/fx-and-rating

visible_sections:
- fx_rate_summary_section
- sovereign_rating_section
- corporate_rating_section
- anomaly_section

actions:
- trigger_fx_recalculation
- trigger_rating_recalculation
- open_anomaly_review


# ============================================================
# 5. MACRO INDICATOR SCREEN
# ============================================================

screen_id: macro_indicator_screen
route_key: admin/economy/macro

visible_sections:
- unemployment_section
- consumption_propensity_section
- gdp_section
- machinery_orders_section
- indicator_trend_section

actions:
- trigger_macro_recalculation
- open_anomaly_review


# ============================================================
# 6. FINAL RULE
# ============================================================

Economy and market control UI must remain:

- market-aware
- indicator-aware
- anomaly-aware
- recalculation-capable
- traceable
