# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE NAVIGATION BUNDLE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Bundles together the most useful copy blocks
for higher-level navigation reflection.

recommended_bundle_order:
1. short index block
2. integrated summary medium
3. restart block medium

bundle_content:

short_index_block:
  - application_name: ProductPortfolioManager
    path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    role:
      - product portfolio judgment
      - KPI/scoring-based evaluation
      - strategy classification
      - proposal/review/approval governance
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

integrated_summary_medium:
  ProductPortfolioManager is a BusinessOS-side application under 07.applications.
  It is positioned as a product portfolio decision front:
  lighter than heavy merchandise planning platforms,
  but deeper in strategy judgment than simple product-information tools.
  It preserves ERP truth boundaries,
  treats forecast as advisory reference,
  and governs application-side artifacts such as
  scores, classifications, proposals, reviews, approvals, alerts, and audit history.

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

formal_conclusion:
Use this bundle when a wider document needs
index + integrated summary + restart hint together.
