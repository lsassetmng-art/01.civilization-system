# ============================================================
# SECURITIES UI MODEL
# ============================================================

status: canonical
layer: model
scope: financial-and-direct-store-services
component: securities-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- securities_home
- portfolio_summary
- market_browse
- order_entry
- order_confirmation
- holdings_detail
- trade_history
- regulatory_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

securities_ui_fields:
- securities_operator_id
- account_id
- holder_id
- portfolio_value_summary
- available_cash_summary
- restricted_trade_profile
- nation_regulation_profile
- order_risk_notice
- pending_order_state
- institution_context_banner


# ============================================================
# 3. ACTIONS
# ============================================================

securities_ui_actions:
- browse_products
- open_holding_detail
- place_buy_order
- place_sell_order
- review_trade_history
- review_risk_notices
- open_watchlist


# ============================================================
# 4. FINAL RULE
# ============================================================

Securities UI must prioritize
position truth,
order clarity,
and regulatory visibility.
