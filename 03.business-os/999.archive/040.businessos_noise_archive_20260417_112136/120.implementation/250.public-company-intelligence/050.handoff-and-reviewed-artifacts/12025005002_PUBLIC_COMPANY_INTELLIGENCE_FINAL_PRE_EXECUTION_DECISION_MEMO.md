# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# FINAL PRE-EXECUTION DECISION MEMO
# ============================================================

status: canonical
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- design-only
- non-execution
- final pre-execution consolidation memo
- remaining major decision items are now fixed

# ============================================================
# 0. PURPOSE
# ============================================================

This memo consolidates the final decisions that are already fixed
before any future execution SQL or API implementation work.

The goal is to make it unambiguous what is already decided.

# ============================================================
# 1. DECISIONS ALREADY FIXED
# ============================================================

## 1-1. DOMAIN POSITION
fixed:
- this is a BusinessOS common foundation
- all consuming applications are Persona-side applications
- ERP is not the placement target for this domain
- NameCardManager is a consumer, not the truth owner

## 1-2. DATABASE POSITION
fixed:
- the domain is Persona-side
- the target schema is the existing business schema
- no new dedicated schema is required at this stage

## 1-3. ARCHITECTURAL POSITION
fixed:
- public information layer is separate
- internal information layer is separate
- inferred / normalization layer is separate
- public data must not overwrite internal application truth
- risky ambiguity must remain reviewable

## 1-4. PRIMARY MODEL POSITION
fixed:
- raw snapshots are separate from normalized profiles
- company profile is separate from officer profile
- source evidence links are first-class
- normalization candidates are first-class
- review queue is first-class
- batch job and audit are first-class

## 1-5. TABLE PLACEMENT
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

## 1-6. READ VIEW POSITION
fixed_views:
- business.v_pci_company_public_profile_latest
- business.v_pci_company_officer_profile_latest
- business.v_pci_company_grouping_support
- business.v_pci_publication_preflight_support
- business.v_pci_review_queue_open
- business.v_pci_batch_job_status_latest

## 1-7. SUPPORT ENDPOINT POSITION
fixed_endpoints:
- POST /business-os/public-company-intelligence/company-grouping-support
- POST /business-os/public-company-intelligence/migration-enrichment-support
- POST /business-os/public-company-intelligence/publication-preflight-support
- POST /business-os/public-company-intelligence/public-company-view-support
- POST /business-os/public-company-intelligence/officer-candidate-support
- POST /business-os/public-company-intelligence/refresh-request
- GET  /business-os/public-company-intelligence/review-queue/open
- GET  /business-os/public-company-intelligence/batch-jobs/latest
- POST /business-os/public-company-intelligence/review-queue/action

## 1-8. STYLE ALIGNMENT
fixed:
- use explicit domain table names
- use explicit domain primary key names
- use uuid primary keys
- use created_at broadly
- use updated_at selectively
- use append-style design for snapshots, logs, and audits
- use jsonb only for raw/flexible payload areas
- use boolean only for true binary semantics
- use explicit status columns by concern

# ============================================================
# 2. FINAL DECISIONS NOW FIXED
# ============================================================

primary_key_default_strategy:
- final: uuid + gen_random_uuid() default as first standard
- note: practical default is DB-side generation first

enum_vs_text_strategy:
- final: text + check constraints
- note: DB enum is not used in first implementation

freshness_threshold_policy:
- final: source-type dependent threshold
- registry: 180 days
- official-site: 90 days
- ir: 60 days
- press/news: 30 days
- unknown: 90 days

reviewer_id_type:
- final: uuid

event_outbox_linkage:
- final: no outbox linkage in first implementation

view_strategy:
- final: normal views first
- note: no materialized view in first implementation

review_queue_mutation_style:
- final: update queue row in place first
- note: audit remains in public_data_change_audit
- note: dedicated review_action_log may be added later if needed

field_specific_source_priority:
- final: field-specific rank
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

# ============================================================
# 3. WHAT IS NOT OPEN ANYMORE
# ============================================================

not_open_anymore:
- schema placement
- domain ownership
- consumer ownership
- core table set
- core view set
- support endpoint set
- raw vs normalized separation
- review queue existence
- batch job existence
- business-schema style fit
- primary key default direction
- enum vs text direction
- freshness policy direction
- outbox first-step decision
- view first-step decision
- review queue mutation direction
- source priority direction

# ============================================================
# 4. SMALLER REMAINING IMPLEMENTATION EXACTIFICATION
# ============================================================

smaller_remaining_items:
- exact check constraint list by column
- exact gen_random_uuid() usage artifact wording in execution SQL
- exact freshness SQL expression placement
- exact field-priority implementation mechanism
- exact future outbox extension point
- exact future materialized-view trigger point

# ============================================================
# 5. JUDGMENT ON READINESS
# ============================================================

readiness_judgment:
- architecture_readiness: ready
- model_readiness: ready
- flow_readiness: ready
- integration_readiness: ready
- policy_readiness: ready
- table_contract_readiness: ready
- view_contract_readiness: ready
- payload_contract_readiness: ready
- sql_draft_readiness: ready as non-execution design draft
- execution_sql_readiness: near-ready after check-constraint exactification

# ============================================================
# 6. RECOMMENDED NEXT STEP ORDER
# ============================================================

recommended_next_step_order:
- 1. reflect final decisions into checklist and handoff docs
- 2. create reviewed execution SQL artifact
- 3. create reviewed API implementation artifact
- 4. keep outbox/materialized-view as deferred future extensions

# ============================================================
# 7. SUMMARY
# ============================================================

Public Company Intelligence is no longer in a fuzzy design state.

It is already fixed as:
- Persona-side
- BusinessOS common foundation
- business schema resident
- review-aware
- source-backed
- NameCardManager-consumable
- pre-execution decisions substantially closed

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
