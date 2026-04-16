# ============================================================
# PRODUCT PORTFOLIO MANAGER SYSTEM INDEX INSERT TEMPLATE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a template block
that can be inserted into broader CivilizationOS-side or application-side index documents.

template_block:

  - application_name: ProductPortfolioManager
    application_path: /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager
    category: business-judgment-application
    role:
      - product portfolio judgment
      - KPI/scoring-based product evaluation
      - strategy classification
      - proposal/review/approval governance
      - ERP-reference and forecast-reference consumption
    canonical_entries:
      - 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    key_design_points:
      - multilingual-ready
      - multi-currency-ready
      - iphone/android/pc/tablet-ready
      - ERP truth boundary preserved
      - forecast advisory boundary preserved
      - judgment artifacts owned by application
    current_state:
      - design expanded
      - implementation not started
      - cleanup/standardization stage

usage_note:
This block is intentionally additive and copy-ready
for wider navigation documents.
