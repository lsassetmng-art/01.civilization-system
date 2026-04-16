# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 000000_FOUNDATION_CANONICAL.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/000000_FOUNDATION_CANONICAL.md

observed_file_shape:
The uploaded foundation canonical is charter-heavy
and system-principle-heavy.

recommended_insert_zone:
- application examples appendix if present
- foundation consumer examples note if present
- root navigation/reference appendix if present

recommended_insert_depth:
short

proposed_insert_text:
  - application_name: ProductPortfolioManager
    role:
      - product portfolio judgment
      - strategy classification
      - proposal/review/approval governance
    boundaries:
      - ERP facts preserved
      - forecast advisory preserved
    state:
      - design expanded
      - implementation not started
    entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md

why_this_depth:
Foundation canonical should remain charter-first.
ProductPortfolioManager should appear only as a succinct example of a governed application.

post_insert_check:
- foundation-level meaning remains primary
- ProductPortfolioManager is mentioned but does not overwhelm the file
