# ============================================================
# PUBLIC COMPANY INTELLIGENCE FOLDER RESTRUCTURE MAP
# ============================================================

status: canonical-meta
system: business-os
layer: meta
domain: public-company-intelligence
document_type: restructure-map
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

purpose:
- Record the move from flat domain layout to subfolder-based layout.

result:
- domain-level index and overview now exist in every active layer
- subfolder-level index and overview now exist under each created subfolder
- authority notes moved under 900.authority where applicable
- implementation authority note numbering collision resolved by using 1202598

notes:
- Later integrated rebuild should be executed after the structure change.
- Any path-based integrated file generated before this change is now stale.
