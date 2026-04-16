# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR FOUNDATION AND SYSTEM RULES
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hints:
- /mnt/data/000000_FOUNDATION_CANONICAL.md
- /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

recommended_insert_depth:
short

recommended_insert_location:
- applications overview appendix
- example application mapping
- system navigation reflection note section

copy_block:
  - application_name: ProductPortfolioManager
    role:
      - product portfolio judgment
      - product strategy classification
      - proposal/review/approval governance
    boundaries:
      - ERP facts preserved
      - forecast advisory preserved
    state:
      - design expanded
      - implementation not started
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

note:
Use short depth here because these files are likely system-level canonicals,
not app-specific drill-down catalogs.
