# ============================================================
# VIEW ONLY MARKET AND BOARD FACILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: view-only-market-and-board-facility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VIEW-ONLY FACILITY TYPES
# ============================================================

view_only_facility_types:
- national_securities_market_facility
- banking_rate_board_facility
- real_estate_market_board_facility
- recruitment_information_center
- nation_market_information_board
- transport_information_center
- civic_notice_board


# ============================================================
# 2. DEFAULT UI TARGETS
# ============================================================

default_ui_targets:
- national_securities_market_facility -> national_market_board_ui
- banking_rate_board_facility -> bank_rate_board_ui
- real_estate_market_board_facility -> real_estate_market_board_ui
- recruitment_information_center -> recruitment_board_ui
- nation_market_information_board -> nation_market_board_ui
- transport_information_center -> transport_board_ui
- civic_notice_board -> civic_notice_ui


# ============================================================
# 3. RULES
# ============================================================

rules:
- view-only facilities must not expose trade or purchase actions unless separately authorized
- national securities market facility is graph and board focused
- view-only facilities may expose related-service backlinks
- view-only facilities may expose compare and ranking functions


# ============================================================
# 4. FINAL RULE
# ============================================================

View-only facilities exist
to expose market or civic state
without turning every board into a transaction endpoint.
