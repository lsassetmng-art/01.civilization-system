# ============================================================
# PRODUCT PORTFOLIO MANAGER UPLOADED TARGET INSERTION STRATEGY
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines insertion strategy by uploaded target.

insertion_strategy:

  /mnt/data/003_CIVILIZATION_OS_CANONICAL_FULL_REBUILT.md:
    use_blocks:
      - medium_index_block
      - integrated_summary_medium
      - restart_block_short
    insertion_goal:
      Make ProductPortfolioManager discoverable in the main application/system landscape.

  /mnt/data/900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md:
    use_blocks:
      - portal reflection block
      - integrated_summary_medium
    insertion_goal:
      Improve portal-side discovery and label clarity.

  /mnt/data/000000_FOUNDATION_CANONICAL.md:
    use_blocks:
      - short index block
    insertion_goal:
      Reflect the app as a business-judgment application without overloading the foundation doc.

  /mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md:
    use_blocks:
      - short index block
      - short restart note if appropriate
    insertion_goal:
      Show that the app exists and remains governed by explicit ERP/fact/judgment boundaries.

  /mnt/data/014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md:
    use_blocks:
      - common-ledger consumer note
    insertion_goal:
      Show ProductPortfolioManager as a consumer of common capabilities, not as a common component itself.

  /mnt/data/ERP_DESIGN_BIBLE_FULL.md:
    use_blocks:
      - ERP-side consumer-boundary note
    insertion_goal:
      Reflect the app only as a downstream ERP fact consumer.

  /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md:
    use_blocks:
      - ERP-side consumer-boundary note
    insertion_goal:
      Preserve scope clarity without treating ProductPortfolioManager as ERP itself.

formal_conclusion:
Different uploaded targets should receive different insertion depth,
not one universal summary block.
