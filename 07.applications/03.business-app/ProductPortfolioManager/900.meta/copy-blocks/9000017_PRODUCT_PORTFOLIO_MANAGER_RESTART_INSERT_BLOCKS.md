# ============================================================
# PRODUCT PORTFOLIO MANAGER RESTART INSERT BLOCKS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides copy-ready restart text
for future handoff or restart documents.

restart_block_short:
ProductPortfolioManager restart point:
begin from OVERVIEW -> INDEX -> INTEGRATED,
then read BUSINESS FLOW,
EXACT TABLES AND ENUMS,
and API CONTRACT EXACT.
Implementation has not started.

restart_block_medium:
ProductPortfolioManager is already broad in design coverage.
Application definition, flow, model, integration boundary,
policy/security, and screen/API requirement layers are fixed.
Implementation has not started.
To restart:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
3. 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
4. 050.flow/0500007_PRODUCT_PORTFOLIO_MANAGER_BUSINESS_FLOW_FORMAL_DESIGN.md
5. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
6. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md

restart_block_long:
ProductPortfolioManager is in the design-expanded,
cleanup/standardization stage.
It is a lightweight product strategy judgment application
that preserves ERP truth boundaries,
treats forecast as advisory reference,
and owns portfolio judgment artifacts such as
scores, classifications, proposals, reviews, approvals, alerts, and audit/history.
Implementation has not started.
Recommended restart order:
1. OVERVIEW
2. INDEX
3. INTEGRATED
4. BUSINESS FLOW FORMAL DESIGN
5. EXACT TABLES AND ENUMS
6. AUTHORIZATION FORMAL DESIGN
7. ERP / FORECAST BOUNDARY INTEGRATION FORMAL DESIGN
8. API CONTRACT EXACT
Warning:
do not collapse ERP fact meaning,
forecast advisory meaning,
and application judgment meaning into one layer.

formal_conclusion:
These blocks are intended for restart and handoff materials.
