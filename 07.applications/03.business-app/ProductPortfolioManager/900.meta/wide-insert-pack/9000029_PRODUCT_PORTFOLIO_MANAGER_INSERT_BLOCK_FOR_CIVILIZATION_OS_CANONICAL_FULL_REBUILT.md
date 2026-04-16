# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR CIVILIZATION OS CANONICAL FULL REBUILT
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hint:
/mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

recommended_insert_depth:
medium

recommended_insert_location:
- application catalog area
- applications landscape area
- business-side application summary area
- restart/navigation appendix area

copy_block:
  - application_name: ProductPortfolioManager
    system_group: 07.applications
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

note:
Use medium depth here because Civilization OS canonical rebuilt
is broad enough to benefit from identity + boundary summary,
but does not need low-level payload/schema detail.
