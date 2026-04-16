# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

recommended_insert_zone:
- application catalog area if present
- applications landscape appendix if present
- integrated application summary area if present
- restart/navigation summary area if present

recommended_insert_depth:
medium

proposed_insert_text:
  - application_name: ProductPortfolioManager
    application_group: 07.applications
    category: business-judgment-application
    summary:
      Lightweight product strategy judgment application
      for KPI/scoring-based product evaluation,
      strategic classification,
      proposals,
      review sessions,
      approvals,
      alerts,
      and audit/history.
      It sits on top of ERP facts
      and uses forecast as advisory reference.
    canonical_entries:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/000_PRODUCT_PORTFOLIO_MANAGER_INDEX.md
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    current_state:
      - design expanded
      - implementation not started

why_this_depth:
CIVILIZATION OS canonical full rebuilt is broad enough
to hold application-level reflection with short boundary summary,
but should not absorb low-level exact payload or schema detail.

post_insert_check:
- ProductPortfolioManager becomes discoverable from the broad canonical
- no implementation-start implication appears
- ERP and forecast boundaries stay concise and clear
