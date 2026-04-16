# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# ERP_DESIGN_BIBLE_FULL.md / ERP_ENTERPRISE_SCOPE_v1.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_files:
- /mnt/data/ERP_DESIGN_BIBLE_FULL.md
- /mnt/data/ERP_ENTERPRISE_SCOPE_v1.md

recommended_insert_zone:
- downstream consumer applications appendix
- external consuming application note
- ERP truth boundary examples appendix

recommended_insert_depth:
short

proposed_insert_text:
  - downstream_application: ProductPortfolioManager
    relationship_to_erp:
      Consumes ERP product and operational facts as reference.
      Does not replace ERP truth.
      Owns only application-side portfolio judgment artifacts
      such as score, classification, proposal, review, approval,
      alert, share scope, and audit/history.
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
    state:
      - design expanded
      - implementation not started

why_this_depth:
ERP-side canonicals should only receive a narrow consumer-boundary note,
not a full app summary.

post_insert_check:
- ERP remains clearly primary
- ProductPortfolioManager remains clearly downstream
- no ERP/application ownership confusion appears
