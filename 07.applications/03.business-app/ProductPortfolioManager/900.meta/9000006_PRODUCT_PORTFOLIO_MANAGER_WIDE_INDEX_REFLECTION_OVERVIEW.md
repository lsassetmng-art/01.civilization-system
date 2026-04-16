# ============================================================
# PRODUCT PORTFOLIO MANAGER WIDE INDEX REFLECTION OVERVIEW
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines how ProductPortfolioManager should be reflected
in wider application-level or CivilizationOS-side navigation
without changing implementation scope.

reflection_principles:
- reflection is for navigation clarity
- reflection must not alter application meaning
- reflection must not imply implementation start
- reflection should help root-level and wider-level discovery
- reflection should point to canonical entry documents only

current_application_identity:
ProductPortfolioManager is a lightweight product strategy judgment application.
It is a BusinessOS-side application under 07.applications
that sits on top of ERP facts and forecast references
to manage product portfolio judgment artifacts.

canonical_entry_documents:
- 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
- 000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
- 00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

recommended_wide_index_positioning:
- 07.applications business judgment app
- product strategy / portfolio governance app
- ERP-reference + forecast-reference consuming app
- multilingual / multi-currency / cross-device capable design set

formal_conclusion:
Wide index reflection for ProductPortfolioManager
should improve discoverability and restartability,
not change design ownership or scope.
