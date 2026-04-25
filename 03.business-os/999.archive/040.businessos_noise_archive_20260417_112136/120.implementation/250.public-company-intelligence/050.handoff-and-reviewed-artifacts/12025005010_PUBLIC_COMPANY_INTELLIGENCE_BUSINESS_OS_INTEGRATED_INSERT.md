# ============================================================
# BUSINESS OS INTEGRATED INSERT
# PUBLIC COMPANY INTELLIGENCE
# ============================================================

status: canonical
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
owner: Boss
prepared_by: Zero
note:
- this file is not a standalone integrated master
- this file is an insertion block for the BusinessOS integrated document

# ============================================================
# 0. DOMAIN SUMMARY
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

This domain is:

- Persona-side
- BusinessOS common foundation
- stored in the existing business schema
- not ERP-owned
- not app-local

# ============================================================
# 1. FINAL POSITION
# ============================================================

final_position:
- target_schema: business
- consumer_apps: Persona-side applications
- primary_consumer: NameCardManager
- ERP_ownership: none
- execution_status: not executed yet
- design_status: structurally fixed

# ============================================================
# 2. CORE BOUNDARY
# ============================================================

core_boundary:
- public information layer separated
- internal application/business context separated
- inferred/normalization layer separated

strict_rules:
- public data does not overwrite internal truth
- original name-card values remain preserved
- review_required remains real
- low-confidence remains visible
- derived data does not masquerade as raw truth

# ============================================================
# 3. ARCHITECTURE
# ============================================================

architecture_layers:
- source registry
- raw ingestion
- normalization and matching
- public profile serving
- review / audit / job control

execution_model:
- nightly batch primary
- lightweight event-triggered supplement secondary
- no heavy synchronous external retrieval in UI flows

# ============================================================
# 4. FIXED TABLE SET
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
# 5. FIXED VIEW SET
# ============================================================

fixed_views:
- business.v_pci_company_public_profile_latest
- business.v_pci_company_officer_profile_latest
- business.v_pci_company_grouping_support
- business.v_pci_publication_preflight_support
- business.v_pci_review_queue_open
- business.v_pci_batch_job_status_latest

# ============================================================
# 6. FIXED SUPPORT ENDPOINT SET
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
# 7. FINAL DECISION PACKAGE
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

field_specific_source_priority:
- corporate_number: registry > official-site > ir > others
- canonical_company_name: registry > official-site > ir > others
- website_url: official-site > registry > ir > others
- ir_url: official-site > ir > others
- representative_name: official-site > ir > registry > others
- officer_profile: official-site > ir > registry > others
- phone_number: official-site > registry > others
- postal_address: registry > official-site > others
- business_summary: official-site > ir > others
- listed_status/market_name/security_code: ir > registry > official-site > others

freshness_policy:
- registry: 180 days
- official-site: 90 days
- ir: 60 days
- press/news: 30 days
- unknown: 90 days

# ============================================================
# 8. STYLE / DB FIT
# ============================================================

business_schema_fit:
- fit confirmed
- explicit domain table names fit existing business schema tolerance
- uuid direction fits existing style
- created_at broad usage fits
- selective updated_at fits
- append-style snapshots/logs/audits fit
- jsonb raw payload usage fits

# ============================================================
# 9. NEXT REAL WORK
# ============================================================

next_real_work:
- review execution SQL artifact
- review API implementation artifact
- create execution-ready one-block SQL only after explicit approval
- create implementation-ready service/handler artifact only after explicit approval

# ============================================================
# 10. REFERENCE DOCUMENTS
# ============================================================

reference_documents:
- 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md
- 1202524_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_EXECUTION_SQL_ARTIFACT_DRAFT.md
- 1202525_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_API_IMPLEMENTATION_ARTIFACT_DRAFT.md
- 1202526_PUBLIC_COMPANY_INTELLIGENCE_FINAL_NAVIGATION_INDEX.md
- 1202527_PUBLIC_COMPANY_INTELLIGENCE_FILE_MANIFEST.md

# ============================================================
# 11. ONE-LINE CONCLUSION
# ============================================================

one_line_conclusion:
- Public Company Intelligence is structurally fixed as a Persona-side BusinessOS common foundation in the existing business schema and is ready for execution-artifact review.

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
