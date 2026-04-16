# ============================================================
# PRODUCT PORTFOLIO MANAGER PATCH PROPOSAL FOR
# 9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

target_file:
/mnt/data/9000_CIVILIZATION_SYSTEM_RULES_INTEGRATED.md

observed_file_shape:
The uploaded system-rules integrated file is standards/rules-first.

recommended_insert_zone:
- application example appendix if present
- design-document application examples if present
- integrated restart/reference appendix if present

recommended_insert_depth:
short

proposed_insert_text:
  - application_name: ProductPortfolioManager
    application_kind: governed business-judgment application
    notable_rules_alignment:
      - explicit source-of-truth boundary
      - review / approval separation
      - additive documentation structure
      - multilingual / multi-currency / cross-device requirements
    canonical_entry:
      - /data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager/00_PRODUCT_PORTFOLIO_MANAGER_INTEGRATED.md
    state:
      - design expanded
      - implementation not started

why_this_depth:
System rules integrated should remain rules-first,
so the app appears best as a concise aligned-example note.

post_insert_check:
- rules stay primary
- ProductPortfolioManager is reflected as a compliant example, not a digression
