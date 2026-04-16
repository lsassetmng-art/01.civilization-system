# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# FINAL HANDOFF
# ============================================================

status: handoff-fixed
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- handoff document
- design-only
- non-execution
- intended for next chat / next work session

# ============================================================
# 0. WHAT THIS DOMAIN IS
# ============================================================

Public Company Intelligence is a Persona-side BusinessOS common
foundation for:

- public company information collection
- public officer information collection
- raw evidence retention
- normalization and matching
- reusable public profile serving
- review queue support
- batch execution support
- NameCardManager support

It is not ERP-owned.
It is not an app-local feature.
It is a shared BusinessOS foundation for Persona-side applications.

# ============================================================
# 1. FINAL POSITION
# ============================================================

final_position:
- persona-side: yes
- BusinessOS common foundation: yes
- ERP placement: no
- storage schema: existing business schema
- NameCardManager role: consumer only
- execution already performed: no
- design maturity: pre-execution decisions closed

# ============================================================
# 2. WHY THIS POSITION WAS CHOSEN
# ============================================================

reasoning:
- all applications are Persona-side
- ERP is ERP-only and should not own this foundation
- Persona-side DB already contains an existing business schema
- existing business schema style is compatible with this domain
- company grouping / migration enrichment / publication preflight are BusinessOS-side concerns

# ============================================================
# 3. MAIN RESPONSIBILITIES
# ============================================================

main_responsibilities:
- register usable public sources
- fetch and preserve public raw source snapshots
- normalize company names and officer titles
- create reusable public company profiles
- create reusable public officer profiles
- preserve field-level evidence links
- create reviewable normalization candidates
- expose grouping / enrichment / preflight support
- retain batch job and audit history

# ============================================================
# 4. CORE BOUNDARY RULES
# ============================================================

boundary_rules:
- public information layer stays separate
- internal application truth stays separate
- inferred / normalization data stays separate
- public data does not overwrite internal notes
- original name-card values remain preserved
- review_required remains real
- low-confidence remains visible

# ============================================================
# 5. FIXED TABLE SET
# ============================================================

fixed_tables:
- business.public_source_registry
- business.company_public_source_snapshot
- business.officer_public_source_snapshot
- business.company_public_profile
- business.company_officer_profile
- business.company_public_profile_source_link
- business.officer_profile_source_link
- business.company_normalization_candidate
- business.officer_normalization_candidate
- business.public_data_review_queue
- business.company_batch_job
- business.company_batch_job_log
- business.public_data_change_audit

# ============================================================
# 6. FIXED VIEW SET
# ============================================================

fixed_views:
- business.v_pci_company_public_profile_latest
- business.v_pci_company_officer_profile_latest
- business.v_pci_company_grouping_support
- business.v_pci_publication_preflight_support
- business.v_pci_review_queue_open
- business.v_pci_batch_job_status_latest

# ============================================================
# 7. FIXED SUPPORT ENDPOINT SET
# ============================================================

fixed_support_endpoints:
- POST /business-os/public-company-intelligence/company-grouping-support
- POST /business-os/public-company-intelligence/migration-enrichment-support
- POST /business-os/public-company-intelligence/publication-preflight-support
- POST /business-os/public-company-intelligence/public-company-view-support
- POST /business-os/public-company-intelligence/officer-candidate-support
- POST /business-os/public-company-intelligence/refresh-request
- GET  /business-os/public-company-intelligence/review-queue/open
- GET  /business-os/public-company-intelligence/batch-jobs/latest
- POST /business-os/public-company-intelligence/review-queue/action

# ============================================================
# 8. DESIGN PRINCIPLES NOW FIXED
# ============================================================

design_principles_now_fixed:
- nightly batch primary
- lightweight event-triggered supplement secondary
- raw and normalized separated
- company and officer separated
- source-backed evidence first-class
- review queue first-class
- batch job and audit first-class
- business schema placement fixed
- uuid id direction fixed
- append-style snapshot/log/audit design fixed
- selective updated_at policy fixed

# ============================================================
# 9. FINAL DECISION PACKAGE
# ============================================================

final_decision_package:
- PK default: uuid + gen_random_uuid() default
- state columns: text + check constraints
- freshness policy: source-type dependent
- reviewer_id type: uuid
- outbox linkage: none in first implementation
- view strategy: normal views first
- review queue mutation: row update first
- source priority: field-specific

# ============================================================
# 10. MOST IMPORTANT DOCUMENTS
# ============================================================

most_important_documents:
- 1202509_PUBLIC_COMPANY_INTELLIGENCE_SUPPORT_API_EXACT_PAYLOAD.md
- 1202510_PUBLIC_COMPANY_INTELLIGENCE_VIEW_AND_ENDPOINT_EXACT_CONTRACT.md
- 1202515_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT_STYLE_ALIGNED_V2.md
- 1202516_PUBLIC_COMPANY_INTELLIGENCE_SQL_DRAFT_BUSINESS_SCHEMA_NON_EXECUTION.md
- 1202517_PUBLIC_COMPANY_INTELLIGENCE_INDEX_AND_VIEW_SQL_DRAFT_NON_EXECUTION.md
- 1202518_PUBLIC_COMPANY_INTELLIGENCE_DESIGN_CONSISTENCY_MATRIX.md
- 1202519_PUBLIC_COMPANY_INTELLIGENCE_EXISTING_BUSINESS_SCHEMA_FIT_CHECK.md
- 1202520_PUBLIC_COMPANY_INTELLIGENCE_FINAL_PRE_EXECUTION_DECISION_MEMO.md
- 1202521_PUBLIC_COMPANY_INTELLIGENCE_FINAL_DECISION_CHECKLIST.md
- 1202522_PUBLIC_COMPANY_INTELLIGENCE_INTEGRATED_PRE_EXECUTION_SUMMARY.md

# ============================================================
# 11. WHAT IS ALREADY CLOSED
# ============================================================

already_closed:
- domain placement
- schema placement
- architecture
- model
- flow
- integration
- policy
- view surface
- endpoint surface
- style fit with business schema
- final 7 decision items

# ============================================================
# 12. WHAT REMAINS
# ============================================================

what_remains:
- execution SQL artifact generation
- check-constraint exactification
- implementation artifact generation
- optional future outbox/materialized-view extension only if later needed

# ============================================================
# 13. IF NEXT CHAT STARTS FROM SCRATCH
# ============================================================

use_this_prompt_in_next_chat:
- We already designed Public Company Intelligence as a Persona-side BusinessOS common foundation stored in the existing business schema, not ERP.
- NameCardManager is a consumer only.
- Architecture, model, flow, integration, policy, table set, view set, support endpoint set, and the 7 pre-execution decisions are already fixed.
- Do not redesign placement or architecture.
- Move directly into reviewed execution SQL artifacts and implementation artifacts.
- Keep outbox and materialized view as deferred future options unless a new concrete requirement appears.

# ============================================================
# 14. ONE-LINE CONCLUSION
# ============================================================

one_line_conclusion:
- Public Company Intelligence is structurally fixed and ready to move from design into reviewed execution-artifact generation.

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
