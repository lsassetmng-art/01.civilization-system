# ============================================================
# BANK RATE BOARD MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: bank-rate-board

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- rate_board_home
- savings_rate_list
- loan_rate_list
- institution_comparison
- official_notices
- historical_rate_graph


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- board_id
- institution_rate_rows
- savings_rate_summary
- loan_rate_summary
- rate_trend_summary
- official_notice_set
- comparison_supported


# ============================================================
# 3. RULES
# ============================================================

rules:
- this service is view-only
- bank account or loan execution must backlink to bank UI
- comparison by institution is supported
- nation regulation notes may be shown inline


# ============================================================
# 4. FINAL RULE
# ============================================================

Rate board exists
to show conditions clearly
before institution entry.
