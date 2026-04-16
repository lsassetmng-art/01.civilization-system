# ============================================================
# PRODUCT PORTFOLIO MANAGER INSERT BLOCK FOR ERP SIDE REFERENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file_hints:
- /mnt/data/ERP_DESIGN_BIBLE_FULL.md
- /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md
- /mnt/data/ERP_SYSTEM_FULL_DUMP.txt

recommended_insert_depth:
short

recommended_insert_location:
- consuming applications appendix
- downstream application references
- business-side judgment consumer note

copy_block:
  - downstream_application: ProductPortfolioManager
    relationship_to_erp:
      Consumes ERP product and operational facts as reference.
      Does not replace ERP truth.
      Owns application-side portfolio judgment artifacts only.
    owned_by_application:
      - score
      - classification
      - proposal
      - review
      - approval
      - alert
      - audit/history
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

note:
ERP-side documents should receive only a narrow consumer-boundary note,
not a full application summary.
