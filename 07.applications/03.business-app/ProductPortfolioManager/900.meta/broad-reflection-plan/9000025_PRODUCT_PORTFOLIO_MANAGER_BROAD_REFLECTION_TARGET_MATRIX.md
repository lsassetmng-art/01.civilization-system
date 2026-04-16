# ============================================================
# PRODUCT PORTFOLIO MANAGER BROAD REFLECTION TARGET MATRIX
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Maps reflection target types
to recommended insertion depth and source blocks.

target_matrix:

  master_index_documents:
    insertion_depth: short_to_medium
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000015_PRODUCT_PORTFOLIO_MANAGER_ROOT_INDEX_COPY_BLOCKS.md
    recommended_content:
      - app name
      - role
      - canonical entries
      - current state

  integrated_canonical_documents:
    insertion_depth: medium
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000016_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED_INSERT_BLOCKS.md
    recommended_content:
      - application summary
      - judgment loop summary
      - ERP / forecast boundary summary
      - current state

  restart_handoff_documents:
    insertion_depth: medium_to_long
    recommended_source_blocks:
      - 900.meta/copy-blocks/9000017_PRODUCT_PORTFOLIO_MANAGER_RESTART_INSERT_BLOCKS.md
      - 900.meta/handoff-bundle/9000020_PRODUCT_PORTFOLIO_MANAGER_FINAL_HANDOFF_BUNDLE.md
    recommended_content:
      - restart order
      - implementation not started
      - safe continuation warnings

  portal_or_reflection_notes:
    insertion_depth: short
    recommended_source_blocks:
      - 900.meta/index-reflection/9000007_PRODUCT_PORTFOLIO_MANAGER_APPLICATION_NAVIGATION_REFLECTION_NOTE.md
      - 900.meta/index-reflection/9000008_PRODUCT_PORTFOLIO_MANAGER_SYSTEM_INDEX_INSERT_TEMPLATE.md
    recommended_content:
      - discovery summary
      - category
      - canonical links

formal_conclusion:
Different broad targets require different insertion depths.
