# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET EXECUTION PRIORITY
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines execution priority if a later phase actually edits uploaded broad canonicals.

priority_order:

  priority_1:
    - /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
    - /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md

  priority_2:
    - /mnt/data/000000_FOUNDATION_CANONICAL.md
    - /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

  priority_3:
    - /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md
    - /mnt/data/ERP_DESIGN_BIBLE_FULL.md
    - /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

  priority_4:
    - dump/reference files only if explicitly needed later

why_this_order:
- portal and CivilizationOS rebuilt give the best discovery return first
- foundation/system-rules should stay terse and therefore come after wording is proven
- ledger/ERP-side reflections are useful but secondary

formal_conclusion:
If broad edits are later executed,
start with the highest-discovery, lowest-semantic-risk files first.
