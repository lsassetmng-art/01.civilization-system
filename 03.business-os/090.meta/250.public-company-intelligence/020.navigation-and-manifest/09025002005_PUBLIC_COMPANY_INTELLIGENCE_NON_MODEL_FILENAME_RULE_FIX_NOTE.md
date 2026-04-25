# ============================================================
# PUBLIC COMPANY INTELLIGENCE NON MODEL FILENAME RULE FIX NOTE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
domain: public-company-intelligence
document_type: rule-fix-note
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

purpose:
- Record the corrective pass that aligned non-model layers with numbered-subfolder filename rules.

affected_layers:
- architecture
- flow
- integration
- operations
- policy
- meta
- implementation

result:
- root files now use layer + domain numeric prefixes
- numbered subfolder files now include subfolder contribution in filenames
- subfolder index and overview files are no longer generic 000_INDEX.md / 000_OVERVIEW.md
