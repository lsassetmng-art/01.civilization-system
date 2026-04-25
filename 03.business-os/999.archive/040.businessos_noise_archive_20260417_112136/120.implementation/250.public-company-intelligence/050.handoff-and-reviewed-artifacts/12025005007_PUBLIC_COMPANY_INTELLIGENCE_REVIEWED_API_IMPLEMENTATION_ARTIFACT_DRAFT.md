# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# REVIEWED API IMPLEMENTATION ARTIFACT DRAFT
# ============================================================

status: canonical-review-final
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- implementation artifact draft
- non-execution
- API/service/read-model binding draft
- aligned to fixed endpoint and payload contracts

# ============================================================
# 0. PURPOSE
# ============================================================

This document stores the reviewed API implementation artifact
draft for Public Company Intelligence.

It is intended to bridge:
- endpoint contracts
- service responsibilities
- read views
- write/update behavior
- batch-triggered support behavior

This is still design text only.
No implementation is executed here.

# ============================================================
# 1. IMPLEMENTATION PRINCIPLES
# ============================================================

implementation_principles:
- endpoints are assistive, not destructive
- service layer owns orchestration
- read views are preferred for read-heavy support APIs
- review_required and confidence_level must never be hidden
- low-confidence support remains visible to consumers
- heavy source retrieval is not done synchronously in user-facing flows
- refresh-request only queues intent; it does not perform heavy fetch inline

# ============================================================
# 2. SERVICE LAYER UNITS
# ============================================================

service_units:
- PublicCompanyProfileReadService
- PublicCompanyGroupingSupportService
- PublicCompanyMigrationEnrichmentService
- PublicCompanyPreflightSupportService
- PublicCompanyOfficerCandidateService
- PublicCompanyRefreshRequestService
- PublicCompanyReviewQueueService
- PublicCompanyBatchMonitoringService

# ============================================================
# 3. ENDPOINT → SERVICE BINDING
# ============================================================

POST /business-os/public-company-intelligence/company-grouping-support:
- service: PublicCompanyGroupingSupportService
- read source:
  - business.v_pci_company_grouping_support
  - business.v_pci_company_public_profile_latest
- write behavior: none

POST /business-os/public-company-intelligence/migration-enrichment-support:
- service: PublicCompanyMigrationEnrichmentService
- read source:
  - business.v_pci_company_public_profile_latest
  - business.v_pci_company_officer_profile_latest
- write behavior:
  - optional lightweight refresh enqueue only when needed

POST /business-os/public-company-intelligence/publication-preflight-support:
- service: PublicCompanyPreflightSupportService
- read source:
  - business.v_pci_publication_preflight_support
  - business.v_pci_company_officer_profile_latest
- write behavior: none

POST /business-os/public-company-intelligence/public-company-view-support:
- service: PublicCompanyProfileReadService
- read source:
  - business.v_pci_company_public_profile_latest
  - business.v_pci_company_officer_profile_latest
  - source link tables when selected_sources requested
- write behavior: none

POST /business-os/public-company-intelligence/officer-candidate-support:
- service: PublicCompanyOfficerCandidateService
- read source:
  - business.v_pci_company_officer_profile_latest
  - business.company_officer_profile
- write behavior: none

POST /business-os/public-company-intelligence/refresh-request:
- service: PublicCompanyRefreshRequestService
- read source:
  - business.public_source_registry
- write behavior:
  - create queue intent through business.company_batch_job or related lightweight queue strategy

GET /business-os/public-company-intelligence/review-queue/open:
- service: PublicCompanyReviewQueueService
- read source:
  - business.v_pci_review_queue_open
- write behavior: none

POST /business-os/public-company-intelligence/review-queue/action:
- service: PublicCompanyReviewQueueService
- read source:
  - business.public_data_review_queue
- write behavior:
  - update review_status / updated_at
  - optionally apply target-side state changes
  - append public_data_change_audit when required

GET /business-os/public-company-intelligence/batch-jobs/latest:
- service: PublicCompanyBatchMonitoringService
- read source:
  - business.v_pci_batch_job_status_latest
- write behavior: none

# ============================================================
# 4. REQUEST VALIDATION RULES
# ============================================================

request_validation_rules:

company-grouping-support:
- raw_company_name required
- max_candidates must be bounded
- empty lookup request rejected

migration-enrichment-support:
- raw_company_name required
- max_company_candidates/max_officer_candidates bounded

publication-preflight-support:
- target_company must not be empty
- at least one identifying field required

public-company-view-support:
- at least one lookup key required
- include_officers/include_selected_sources are optional booleans

officer-candidate-support:
- raw_officer_name required
- company context should contain at least one company hint when possible

refresh-request:
- raw_company_name required
- reason_code required and must be valid

review-queue/action:
- public_data_review_queue_id required
- action required
- reviewer_id required

# ============================================================
# 5. RESPONSE COMPOSITION RULES
# ============================================================

response_composition_rules:
- use fixed response envelope
- always return confidence_level where candidate semantics exist
- always return review_required where ambiguity semantics exist
- always return freshness_summary where public profile semantics exist
- do not fabricate selected_sources if omitted from query
- preserve result_code/result_message/generated_at/data

# ============================================================
# 6. READ MODEL STRATEGY
# ============================================================

read_model_strategy:
- prefer views for API reads
- fall back to base tables only when view is insufficient
- selected_sources may require base source-link reads
- review action uses base table update, not view update
- batch monitoring uses latest view first

# ============================================================
# 7. WRITE / MUTATION STRATEGY
# ============================================================

write_mutation_strategy:
- support endpoints are mostly read-only
- refresh-request is queue-intent creation only
- review-queue/action updates queue row in place
- target profile/candidate side-effects must remain explicit and auditable
- no heavy source retrieval in support endpoint request path

# ============================================================
# 8. ERROR MAPPING STRATEGY
# ============================================================

error_mapping_strategy:
- invalid request -> INVALID_REQUEST
- no matching public profile -> NOT_FOUND
- ambiguous result that blocks direct support outcome -> REVIEW_REQUIRED
- source disabled/unavailable for queued action -> SOURCE_UNAVAILABLE
- internal processing failure -> INTERNAL_ERROR

# ============================================================
# 9. SECURITY / BOUNDARY STRATEGY
# ============================================================

security_boundary_strategy:
- API must expose only public-intelligence-scoped data
- no internal private notes from consuming apps
- no internal relationship data leakage
- no hidden confidence suppression
- no hidden review suppression

# ============================================================
# 10. IMPLEMENTATION NOTES BY SERVICE
# ============================================================

PublicCompanyGroupingSupportService:
- normalize inbound company hints
- search grouping-support view
- rank by field-specific source-aware confidence posture
- return assistive candidates only

PublicCompanyMigrationEnrichmentService:
- read profile and officer candidates
- return missing-field hints
- optionally trigger lightweight refresh request when no usable candidate exists

PublicCompanyPreflightSupportService:
- compare input identity fields to public profile fields
- emit consistency checks
- emit freshness and review warnings

PublicCompanyProfileReadService:
- assemble company profile
- optionally attach officers
- optionally attach selected source references

PublicCompanyOfficerCandidateService:
- search by company context + officer input
- preserve ambiguity visibility
- never overstate certainty

PublicCompanyRefreshRequestService:
- validate reason_code
- create queue intent only
- do not run source fetch synchronously

PublicCompanyReviewQueueService:
- list pending queue items
- apply approve/reject/merge/ignore
- update review row in place
- emit audit when needed

PublicCompanyBatchMonitoringService:
- expose latest batch execution state
- support operational UI/reporting only

# ============================================================
# 11. WHAT THIS ARTIFACT ENABLES NEXT
# ============================================================

enables_next:
- reviewed API implementation planning
- handler/service split planning
- execution SQL review tied to service usage
- later endpoint implementation without payload redesign

# ============================================================
# 12. SUMMARY
# ============================================================

This artifact makes the API side nearly implementation-ready by
connecting fixed endpoint contracts to fixed service behavior,
while preserving the already approved domain boundaries.

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
