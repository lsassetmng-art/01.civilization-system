# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# INTEGRATED PRE-EXECUTION SUMMARY
# ============================================================

status: fixed-pre-execution
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- integrated summary
- design-only
- non-execution
- intended as the main re-entry document before future execution work

# ============================================================
# 0. PURPOSE
# ============================================================

This document integrates the current design position of the
Public Company Intelligence domain into one re-entry summary.

# ============================================================
# 1. FINAL POSITION NOW FIXED
# ============================================================

final_position_now_fixed:
- this domain is Persona-side
- this domain is a BusinessOS common foundation
- this domain is not an ERP-owned domain
- all consuming applications are Persona-side applications
- NameCardManager is a consumer, not the owner of source truth
- the target storage schema is the existing business schema
- execution is not performed yet
- design is fixed to pre-execution level

# ============================================================
# 2. DOMAIN PURPOSE
# ============================================================

domain_purpose:
- collect public company information
- collect public officer information
- preserve source-backed raw evidence
- normalize company names and officer titles
- build reusable public profiles
- create reviewable match candidates
- support company grouping
- support migration enrichment
- support publication preflight
- support company-view public reference

# ============================================================
# 3. CORE BOUNDARY
# ============================================================

core_boundary:
- public information layer is separate
- internal contact / business context layer is separate
- inferred / normalization layer is separate

strict_rules:
- public data does not overwrite internal truth
- original name-card values remain preserved
- review_required remains real
- low-confidence remains visible
- derived data does not masquerade as raw truth

# ============================================================
# 4. ARCHITECTURE SUMMARY
# ============================================================

architecture_layers:
- source registry layer
- raw ingestion layer
- normalization and matching layer
- public profile layer
- review / audit / job control layer

execution_model:
- nightly batch is primary
- lightweight event-triggered supplement is secondary
- no heavy synchronous external retrieval in UI flow

# ============================================================
# 5. MODEL SUMMARY
# ============================================================

core_entities:
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

model_principles:
- raw and normalized separated
- company and officer separated
- evidence links explicit
- review first-class
- audit first-class

# ============================================================
# 6. FLOW SUMMARY
# ============================================================

main_flows:
- nightly fetch planning
- raw ingestion
- parse and normalization
- match and merge
- publication refresh
- review queue handling
- NameCardManager grouping support
- migration enrichment support
- publication preflight support

# ============================================================
# 7. INTEGRATION SUMMARY
# ============================================================

primary_consumers:
- NameCardManager
- future company/contact domain
- review workbench
- batch job monitoring
- publication preflight support

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
# 8. VIEW SUMMARY
# ============================================================

fixed_views:
- business.v_pci_company_public_profile_latest
- business.v_pci_company_officer_profile_latest
- business.v_pci_company_grouping_support
- business.v_pci_publication_preflight_support
- business.v_pci_review_queue_open
- business.v_pci_batch_job_status_latest

# ============================================================
# 9. STYLE / DB FIT SUMMARY
# ============================================================

business_schema_fit:
- fit confirmed
- no forced move to new schema required
- explicit domain table names fit existing business schema tolerance
- uuid direction fits existing style
- created_at broad usage fits
- selective updated_at fits
- append-style snapshots/logs/audits fit
- jsonb raw payload usage fits

# ============================================================
# 10. FINAL DECISION PACKAGE
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
# 11. DOCUMENTS THAT NOW MATTER MOST
# ============================================================

highest_value_documents:
- 1202509_PUBLIC_COMPANY_INTELLIGENCE_SUPPORT_API_EXACT_PAYLOAD.md
- 1202510_PUBLIC_COMPANY_INTELLIGENCE_VIEW_AND_ENDPOINT_EXACT_CONTRACT.md
- 1202515_PUBLIC_COMPANY_INTELLIGENCE_TABLE_EXACT_CONTRACT_STYLE_ALIGNED_V2.md
- 1202516_PUBLIC_COMPANY_INTELLIGENCE_SQL_DRAFT_BUSINESS_SCHEMA_NON_EXECUTION.md
- 1202517_PUBLIC_COMPANY_INTELLIGENCE_INDEX_AND_VIEW_SQL_DRAFT_NON_EXECUTION.md
- 1202518_PUBLIC_COMPANY_INTELLIGENCE_DESIGN_CONSISTENCY_MATRIX.md
- 1202519_PUBLIC_COMPANY_INTELLIGENCE_EXISTING_BUSINESS_SCHEMA_FIT_CHECK.md
- 1202520_PUBLIC_COMPANY_INTELLIGENCE_FINAL_PRE_EXECUTION_DECISION_MEMO.md
- 1202521_PUBLIC_COMPANY_INTELLIGENCE_FINAL_DECISION_CHECKLIST.md
- 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md

# ============================================================
# 12. WHAT IS ALREADY CLOSED
# ============================================================

closed_items:
- domain placement
- schema placement
- app vs ERP boundary
- architecture
- model
- flow
- integration
- policy
- view set
- endpoint set
- table set
- style fit with existing business schema
- final 7 decision items

# ============================================================
# 13. WHAT NOW REMAINS
# ============================================================

remaining_items:
- exact execution SQL artifact
- exact check-constraint artifact
- exact implementation artifact review

# ============================================================
# 14. READINESS JUDGMENT
# ============================================================

readiness_judgment:
- architecture: ready
- model: ready
- flow: ready
- integration: ready
- policy: ready
- view/payload contract: ready
- business-schema fit: ready
- execution SQL: next
- pre-execution decision surface: closed

# ============================================================
# 15. RECOMMENDED NEXT STEP
# ============================================================

recommended_next_step:
- generate reviewed execution SQL artifact
- do not redesign architecture again
- keep outbox/materialized-view as deferred future extensions

# ============================================================
# 16. ONE-LINE CONCLUSION
# ============================================================

one_line_conclusion:
- Public Company Intelligence is structurally fixed as a Persona-side BusinessOS common foundation in the existing business schema, and the main pre-execution decisions are closed.

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
