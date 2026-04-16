# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# FILE MANIFEST
# ============================================================

status: manifest-draft
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- file manifest
- non-execution
- intended as the full file inventory for this domain

# ============================================================
# 0. PURPOSE
# ============================================================

This manifest is the full file inventory for the
Public Company Intelligence domain.

Use it when:
- checking what already exists
- handing off to another chat
- reviewing completion coverage
- avoiding duplicate document creation

# ============================================================
# 1. CORE IMPLEMENTATION DOCUMENTS
# ============================================================

implementation_core:
- 1202500_PUBLIC_COMPANY_INTELLIGENCE_INDEX.md
- 1202501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 1202502_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_ROADMAP.md
- 1202503_BATCH_EXECUTION_IMPLEMENTATION_NOTE.md
- 1202504_PROFILE_PUBLICATION_IMPLEMENTATION_NOTE.md
- 1202505_NORMALIZATION_DICTIONARY_IMPLEMENTATION_NOTE.md
- 1202506_REVIEW_QUEUE_IMPLEMENTATION_NOTE.md
- 1202507_NAMECARDMANAGER_SUPPORT_INTERFACE_NOTE.md
- 1202508_OPEN_ISSUES_AND_DECISION_ITEMS.md

# ============================================================
# 2. EXACT CONTRACT / SQL / REVIEW DOCUMENTS
# ============================================================

exact_contract_and_sql:
- 1202509_PUBLIC_COMPANY_INTELLIGENCE_SUPPORT_API_EXACT_PAYLOAD.md
- 1202510_PUBLIC_COMPANY_INTELLIGENCE_VIEW_AND_ENDPOINT_EXACT_CONTRACT.md
- 1202511_PUBLIC_COMPANY_INTELLIGENCE_PHYSICAL_DDL_SPEC.md
- 1202512_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT.md
- 1202513_PUBLIC_COMPANY_INTELLIGENCE_BUSINESS_SCHEMA_DDL_DRAFT.md
- 1202514_PUBLIC_COMPANY_INTELLIGENCE_BUSINESS_SCHEMA_STYLE_ALIGNMENT.md
- 1202515_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT_STYLE_ALIGNED_V2.md
- 1202516_PUBLIC_COMPANY_INTELLIGENCE_SQL_DRAFT_BUSINESS_SCHEMA_NON_EXECUTION.md
- 1202517_PUBLIC_COMPANY_INTELLIGENCE_INDEX_AND_VIEW_SQL_DRAFT_NON_EXECUTION.md
- 1202518_PUBLIC_COMPANY_INTELLIGENCE_DESIGN_CONSISTENCY_MATRIX.md
- 1202519_PUBLIC_COMPANY_INTELLIGENCE_EXISTING_BUSINESS_SCHEMA_FIT_CHECK.md
- 1202520_PUBLIC_COMPANY_INTELLIGENCE_FINAL_PRE_EXECUTION_DECISION_MEMO.md
- 1202521_PUBLIC_COMPANY_INTELLIGENCE_FINAL_DECISION_CHECKLIST.md
- 1202522_PUBLIC_COMPANY_INTELLIGENCE_INTEGRATED_PRE_EXECUTION_SUMMARY.md
- 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md
- 1202524_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_EXECUTION_SQL_ARTIFACT_DRAFT.md
- 1202525_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_API_IMPLEMENTATION_ARTIFACT_DRAFT.md
- 1202526_PUBLIC_COMPANY_INTELLIGENCE_FINAL_NAVIGATION_INDEX.md

# ============================================================
# 3. META DOCUMENTS
# ============================================================

meta_documents:
- ../../090.meta/250.public-company-intelligence/0902501_PUBLIC_COMPANY_INTELLIGENCE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
- ../../090.meta/250.public-company-intelligence/0902502_PUBLIC_COMPANY_INTELLIGENCE_PASS_CANDIDATE_SUMMARY.md
- ../../090.meta/250.public-company-intelligence/0902503_PUBLIC_COMPANY_INTELLIGENCE_META_NAVIGATION_INDEX.md

# ============================================================
# 4. RECOMMENDED MINIMUM RESTART SET
# ============================================================

recommended_minimum_restart_set:
- 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md
- 1202522_PUBLIC_COMPANY_INTELLIGENCE_INTEGRATED_PRE_EXECUTION_SUMMARY.md
- 1202524_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_EXECUTION_SQL_ARTIFACT_DRAFT.md
- 1202525_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_API_IMPLEMENTATION_ARTIFACT_DRAFT.md
- 1202526_PUBLIC_COMPANY_INTELLIGENCE_FINAL_NAVIGATION_INDEX.md

# ============================================================
# 5. CURRENT STATE
# ============================================================

current_state:
- architecture/design complete: yes
- placement fixed: yes
- schema fixed: yes
- decision package fixed: yes
- execution artifacts drafted: yes
- execution performed: no

# ============================================================
# 6. NEXT RECOMMENDED WORK
# ============================================================

next_recommended_work:
- final review of execution SQL artifact
- final review of API implementation artifact
- create execution-ready one-block SQL only after explicit approval
- create implementation-ready service/handler artifact only after explicit approval

# ============================================================
# 7. ONE-LINE SUMMARY
# ============================================================

one_line_summary:
- This manifest is the complete inventory and restart map for Public Company Intelligence.

<!-- AUTHORITATIVE SUPPLEMENT LINK BEGIN -->
authoritative_supplement:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

precedence_rule:
- On conflict, the supplement wins.

effective_status:
- implementation-ready-by-supplement

reflection_note:
- This file remains as local decomposition/reference content.
- Implementation must follow supplement-first authority until
  full back-port rewriting is completed.
<!-- AUTHORITATIVE SUPPLEMENT LINK END -->
