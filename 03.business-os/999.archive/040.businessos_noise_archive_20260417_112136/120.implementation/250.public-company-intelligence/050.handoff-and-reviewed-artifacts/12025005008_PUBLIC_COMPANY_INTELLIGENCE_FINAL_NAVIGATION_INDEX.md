# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# FINAL NAVIGATION INDEX
# ============================================================

status: canonical
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- navigation index
- non-execution
- intended as the main file map for this domain

# ============================================================
# 0. PURPOSE
# ============================================================

This document provides the final navigation order for the
Public Company Intelligence design set.

Use this as the entry point when restarting work.

# ============================================================
# 1. FASTEST READING ORDER
# ============================================================

fastest_reading_order:
- 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md
- 1202522_PUBLIC_COMPANY_INTELLIGENCE_INTEGRATED_PRE_EXECUTION_SUMMARY.md
- 1202520_PUBLIC_COMPANY_INTELLIGENCE_FINAL_PRE_EXECUTION_DECISION_MEMO.md
- 1202521_PUBLIC_COMPANY_INTELLIGENCE_FINAL_DECISION_CHECKLIST.md
- 1202515_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT_STYLE_ALIGNED_V2.md
- 1202516_PUBLIC_COMPANY_INTELLIGENCE_SQL_DRAFT_BUSINESS_SCHEMA_NON_EXECUTION.md
- 1202517_PUBLIC_COMPANY_INTELLIGENCE_INDEX_AND_VIEW_SQL_DRAFT_NON_EXECUTION.md
- 1202524_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_EXECUTION_SQL_ARTIFACT_DRAFT.md
- 1202525_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_API_IMPLEMENTATION_ARTIFACT_DRAFT.md

# ============================================================
# 2. DOCUMENT GROUPS
# ============================================================

## 2-1. Restart / Handoff
restart_and_handoff:
- 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md
- 1202522_PUBLIC_COMPANY_INTELLIGENCE_INTEGRATED_PRE_EXECUTION_SUMMARY.md
- 1202520_PUBLIC_COMPANY_INTELLIGENCE_FINAL_PRE_EXECUTION_DECISION_MEMO.md
- 1202521_PUBLIC_COMPANY_INTELLIGENCE_FINAL_DECISION_CHECKLIST.md

## 2-2. Contract / Exactification
contract_and_exactification:
- 1202509_PUBLIC_COMPANY_INTELLIGENCE_SUPPORT_API_EXACT_PAYLOAD.md
- 1202510_PUBLIC_COMPANY_INTELLIGENCE_VIEW_AND_ENDPOINT_EXACT_CONTRACT.md
- 1202511_PUBLIC_COMPANY_INTELLIGENCE_PHYSICAL_DDL_SPEC.md
- 1202512_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT.md
- 1202514_PUBLIC_COMPANY_INTELLIGENCE_BUSINESS_SCHEMA_STYLE_ALIGNMENT.md
- 1202515_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT_STYLE_ALIGNED_V2.md

## 2-3. SQL Drafts
sql_drafts:
- 1202513_PUBLIC_COMPANY_INTELLIGENCE_BUSINESS_SCHEMA_DDL_DRAFT.md
- 1202516_PUBLIC_COMPANY_INTELLIGENCE_SQL_DRAFT_BUSINESS_SCHEMA_NON_EXECUTION.md
- 1202517_PUBLIC_COMPANY_INTELLIGENCE_INDEX_AND_VIEW_SQL_DRAFT_NON_EXECUTION.md
- 1202524_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_EXECUTION_SQL_ARTIFACT_DRAFT.md

## 2-4. Review / Consistency
review_and_consistency:
- 1202518_PUBLIC_COMPANY_INTELLIGENCE_DESIGN_CONSISTENCY_MATRIX.md
- 1202519_PUBLIC_COMPANY_INTELLIGENCE_EXISTING_BUSINESS_SCHEMA_FIT_CHECK.md

## 2-5. API / Service Implementation
api_and_service_implementation:
- 1202525_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_API_IMPLEMENTATION_ARTIFACT_DRAFT.md

## 2-6. Meta / Closure
meta_and_closure:
- 0902501_PUBLIC_COMPANY_INTELLIGENCE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
- 0902502_PUBLIC_COMPANY_INTELLIGENCE_PASS_CANDIDATE_SUMMARY.md

# ============================================================
# 3. CURRENT TRUE STATUS
# ============================================================

current_true_status:
- placement fixed
- schema fixed
- architecture fixed
- model fixed
- flow fixed
- integration fixed
- policy fixed
- pre-execution decision package fixed
- execution artifacts drafted
- no SQL executed yet
- no API implemented yet

# ============================================================
# 4. NEXT REAL WORK ORDER
# ============================================================

next_real_work_order:
- review 1202524 execution SQL artifact
- review 1202525 API implementation artifact
- create final execution-ready SQL block
- create final implementation-ready API artifact
- execute only after explicit approval

# ============================================================
# 5. DO NOT REOPEN
# ============================================================

do_not_reopen:
- Persona-side placement
- business schema placement
- BusinessOS ownership
- ERP non-placement
- NameCardManager consumer-only rule
- core table/view/endpoint set
- final decision package

# ============================================================
# 6. ONE-LINE ENTRY GUIDE
# ============================================================

one_line_entry_guide:
- Start with 1202523, then 1202522, then 1202524 and 1202525.

## authoritative supplement
- `9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md`
  - authoritative over conflicting local draft content

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

## 2026-04-16 canonical rewrite
- public-company-intelligence implementation canonical rewrite batch completed
