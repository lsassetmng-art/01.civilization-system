# ============================================================
# BUSINESS PUBLIC COMPANY INTELLIGENCE
# IMPLEMENTATION READY CLOSURE PACK
# ============================================================

status: canonical-supplement
system: business-os
layer: meta
domain: public-company-intelligence
scope:
  - 250.public-company-intelligence
excludes:
  - LifeOS
owner: Boss
prepared_by: Zero
date: 2026-04-16

purpose:
Close the remaining implementation-blocking ambiguity in
BusinessOS Public Company Intelligence and define one
authoritative supplement over the existing draft set.

authoritative_effect:
- This document is the decision layer for the remaining draft files under
  250.public-company-intelligence.
- Existing draft files may remain physically present for now,
  but they must not override this supplement.
- Consumer apps must treat the contracts in this document as authoritative.

closed_target_set:
- 020.architecture/250.public-company-intelligence/*
- 030.model/250.public-company-intelligence/*
- 050.flow/250.public-company-intelligence/*
- 060.integration/250.public-company-intelligence/*
- 070.operations/250.public-company-intelligence/*
- 080.policy/250.public-company-intelligence/*
- 090.interface/250.public-company-intelligence/*
- 120.implementation/250.public-company-intelligence/*

draft_closure_note:
- This supplement closes the remaining draft ambiguity concentrated
  in Public Company Intelligence.
- Existing file-level back-porting may be done later,
  but implementation may proceed using this supplement as source authority.

# ============================================================
# 1. IMPLEMENTATION-READY STANDARD
# ============================================================

A domain is implementation-ready only when all of the following are fixed:

1. truth boundary
2. write authority
3. state transition
4. failure / retry / review path
5. request / response contract
6. retention / audit / masking posture
7. integration direction
8. implementation order

This document fixes those items for Public Company Intelligence.

# ============================================================
# 2. AUTHORITATIVE ROLE
# ============================================================

Public Company Intelligence is a BusinessOS common read-support domain.

It exists to:
- collect public evidence about companies and officers
- preserve source traceability
- normalize reusable public profiles
- expose assistive read models to consumer apps
- surface ambiguity and review state explicitly

It is not:
- ERP accounting truth
- private CRM truth
- internal HR truth
- destructive silent overwrite logic
- uncontrolled web-scrape truth

Primary consumers:
- NameCardManager
- publication-preflight support
- business contact assistance
- review workbench
- batch monitoring surfaces

# ============================================================
# 3. EXACT TRUTH BOUNDARIES
# ============================================================

Source of truth by object is fixed as follows.

business_truth_objects:
- public_source_registry
- company_public_source_snapshot
- officer_public_source_snapshot
- company_public_profile
- company_officer_profile
- public_profile_source_link
- company_normalization_candidate
- officer_normalization_candidate
- public_data_review_queue
- company_batch_job
- company_batch_job_log
- public_data_change_audit

rules:
- Consumer apps are read-consumers by default.
- Consumer apps must not directly mutate final public profiles.
- Final public profile mutation is allowed only through governed review
  or governed exact support endpoints defined in this supplement.
- Raw source evidence must remain preservable even when it loses winner status.

# ============================================================
# 4. FIRST-WAVE SOURCE SET
# ============================================================

Allowed first-wave canonical source classes:

- official corporate registry or legally authoritative corporate identifier source
- official company website
- official IR / PR / investor relations page
- official exchange / filing / disclosure source
- official government or regulator notice source
- governed trusted directory source

forbidden_as_first_wave_canonical:
- anonymous community content
- unverifiable wiki-style content
- uncontrolled forum content
- generic scraped pages without governed source approval
- AI-generated summaries as source truth

# ============================================================
# 5. EXACT FIELD PRIORITY
# ============================================================

company_identity_priority:
  corporate_number:
    1: official registry
    2: official filing / exchange source
    3: never inferred from directory-only content
  canonical_company_name:
    1: official registry
    2: official filing / exchange source
    3: official company site
    4: trusted directory
  security_code:
    1: official exchange / filing source
    2: official IR page
  listed_status:
    1: official exchange / filing source
    2: official IR page
  market_name:
    1: official exchange / filing source
    2: official IR page

public_profile_priority:
  website_url:
    1: official company site
    2: official filing / exchange source
  ir_url:
    1: official IR page
    2: official company site
  phone_number:
    1: official company site
    2: official filing / exchange source
    3: trusted directory only when aligned with stronger evidence
  postal_address:
    1: official company site
    2: official filing / exchange source
    3: trusted directory only when aligned with stronger evidence
  representative_name:
    1: official filing / exchange source
    2: official company site
    3: official IR page

officer_priority:
  canonical_officer_name:
    1: official filing / exchange source
    2: official company site
  canonical_title:
    1: official filing / exchange source
    2: official company site
  representative_flag:
    1: official filing / exchange source
    2: official registry
    3: official company page

winner_rule:
- stronger-source value wins final published field
- weaker-source conflicting value is preserved as evidence
- weaker-source conflict must not silently overwrite winner value

# ============================================================
# 6. EXACT NORMALIZATION KEYS
# ============================================================

normalized_company_key_rule:
1. if corporate_number exists:
   jp:{corporate_number}

2. else if legal country corporate identifier exists:
   {country_code}:{corporate_identifier}

3. else:
   {country_code}:{normalized_company_name}:{etld_plus_one_or_no_domain}

normalized_company_name_rules:
- uppercase ASCII letters
- normalize full-width and half-width variants
- strip governed legal suffix noise
- collapse punctuation and repeated spaces
- preserve meaningful language tokens

domain_rule:
- use normalized root domain when valid site exists
- do not publish final company merge on name alone when domain is absent and identifier is absent

normalized_officer_key_rule:
{company_public_profile_id}:{normalized_person_name}:{title_family}

officer_key_notes:
- normalized_person_name applies whitespace / width / punctuation normalization
- title_family maps titles into governed canonical families
- if company linkage is not stable, final normalized_officer_key must not be published
- unstable officer linkage must enter review

# ============================================================
# 7. EXACT CONFIDENCE / REVIEW THRESHOLDS
# ============================================================

confidence_bands:
- high: 0.92 - 1.00
- medium: 0.75 - 0.91
- low: 0.60 - 0.74
- unsafe: below 0.60

auto_publish_allowed_only_when:
- confidence >= 0.92
- no hard conflict
- no identity collision
- no representative ambiguity
- no source prohibition

review_required_when_any_true:
- confidence < 0.92
- strong-source conflict exists
- candidate merge crosses different domains without identifier support
- representative_flag changed
- officer title family changed across strong sources
- consumer requested safe-review mode

merge_prohibited_without_review_when:
- confidence < 0.60
- corporate number mismatch exists
- near-match name but site / phone / address disagree materially
- officer identity crosses companies without strong evidence

# ============================================================
# 8. EXACT LIFECYCLE STATES
# ============================================================

fetch_status:
- planned
- fetching
- fetched
- partial
- failed
- skipped_source_disabled

parse_state:
- raw_only
- parsed
- partial_parse
- parse_failed

normalization_state:
- unnormalized
- candidate_built
- review_required
- auto_merge_ready
- merged
- rejected

profile_state:
- draft
- active
- needs_review
- superseded
- source_disabled_hold
- retired

review_state:
- none
- queued
- in_review
- approved
- rejected
- escalated

batch_job_state:
- planned
- running
- partial_success
- succeeded
- failed
- cancelled

state_rules:
- active profile may coexist with newer evidence snapshots
- rejected candidate must remain auditable
- superseded profile must remain readable for audit purposes
- source-disabled hold must not delete history

# ============================================================
# 9. EXACT FLOW BEHAVIOR
# ============================================================

nightly_fetch_planning_flow:
1. enumerate enabled sources
2. create company_batch_job with planned state
3. freeze source version basis for the run
4. fan out source fetch tasks
5. block disabled source tasks as skipped_source_disabled

raw_ingestion_flow:
1. fetch raw payload
2. persist source metadata and retrieval timestamp
3. persist raw snapshot before normalization
4. record checksum / source URL / fetch basis
5. mark parse_state raw_only

parse_and_normalization_flow:
1. parse raw payload into structured candidate fields
2. produce company or officer normalization candidate
3. score candidate confidence
4. compare against stronger-source winner rules
5. choose auto_merge_ready or review_required

match_and_merge_flow:
1. resolve normalized_company_key
2. resolve normalized_officer_key only when stable
3. block merge on prohibited conflict rules
4. merge candidate into active profile only when allowed
5. preserve source link and change audit

publication_refresh_flow:
1. rebuild read model projection
2. update freshness timestamp
3. preserve warnings and confidence visibility
4. expose active profile to consumers

review_queue_flow:
1. queue candidate with exact reason code
2. assign review priority
3. reviewer approves or rejects
4. change audit is recorded
5. affected profile projection is refreshed

# ============================================================
# 10. EXACT REASON CODES
# ============================================================

review_reason_codes:
- strong_source_conflict
- representative_changed
- officer_cross_company_ambiguity
- near_match_without_identifier
- domain_conflict
- title_family_conflict
- low_confidence_candidate
- prohibited_source_pattern
- consumer_safe_review_request

failure_reason_codes:
- source_timeout
- source_auth_failure
- parser_breakage
- invalid_document_format
- unsupported_source_shape
- normalization_rule_missing
- merge_prohibited
- projection_refresh_failed

# ============================================================
# 11. EXACT INTERFACE POSTURE
# ============================================================

read_policy:
- default posture is read-mostly
- consumer apps may search, lookup, and request suggestions
- final publish mutation is governed and explicit
- all mutating actions must create audit records

## 11.1 company profile read API

endpoint:
- GET /business/public-company-intelligence/company-profile

query_parameters:
- query
- corporate_number
- normalized_company_key
- mode            # strict | assist
- include_sources # true | false
- include_officers # true | false

success_response_fields:
- company_public_profile_id
- normalized_company_key
- canonical_company_name
- corporate_number
- listed_status
- market_name
- website_url
- ir_url
- phone_number
- postal_address
- representative_name
- profile_state
- confidence_score
- freshness_at
- warnings
- matched_sources
- officers

error_codes:
- company_not_found
- ambiguous_company_match
- invalid_query
- source_projection_unavailable

## 11.2 officer profile read API

endpoint:
- GET /business/public-company-intelligence/officer-profile

query_parameters:
- company_public_profile_id
- officer_name
- normalized_officer_key
- include_sources

success_response_fields:
- company_officer_profile_id
- company_public_profile_id
- normalized_officer_key
- canonical_officer_name
- canonical_title
- representative_flag
- profile_state
- confidence_score
- freshness_at
- warnings
- matched_sources

error_codes:
- officer_not_found
- ambiguous_officer_match
- invalid_query

## 11.3 normalization helper API

endpoint:
- POST /business/public-company-intelligence/normalize/company-candidate

request_fields:
- source_type
- source_url
- observed_company_name
- observed_corporate_identifier
- observed_domain
- observed_phone_number
- observed_postal_address
- observed_representative_name
- safe_review_mode

response_fields:
- normalized_company_key_candidate
- confidence_score
- recommended_action       # auto_merge_ready | review_required | prohibited
- matched_existing_profile
- reason_codes
- warnings

## 11.4 review decision API

endpoint:
- POST /business/public-company-intelligence/review/decision

request_fields:
- review_queue_id
- decision                 # approve | reject | escalate
- reviewer_note
- publish_mode             # active | hold
- override_reason_code

response_fields:
- review_queue_id
- decision
- resulting_profile_state
- resulting_projection_refresh_state
- audit_id

authorization_rule:
- review decision API requires governed reviewer capability
- consumer app standard users must not call this endpoint directly

# ============================================================
# 12. EXACT WRITE BOUNDARIES
# ============================================================

allowed_write_paths:
- source registry maintenance
- governed fetch execution
- candidate normalization
- governed review queue mutation
- governed final profile publish
- audit and batch log creation

forbidden_write_paths:
- direct consumer overwrite of final profile
- silent merge without audit
- destructive delete of source evidence during normal flow
- direct mutation from external consumer cache

# ============================================================
# 13. EXACT TABLE / STORAGE MINIMUM SET
# ============================================================

minimum_authoritative_tables:
- public_source_registry
- company_public_source_snapshot
- officer_public_source_snapshot
- company_public_profile
- company_officer_profile
- public_profile_source_link
- company_normalization_candidate
- officer_normalization_candidate
- public_data_review_queue
- company_batch_job
- company_batch_job_log
- public_data_change_audit

minimum_projection_needs:
- company_profile_read_projection
- officer_profile_read_projection
- freshness / warnings projection
- source trace projection

storage_rules:
- raw evidence and normalized profile storage must be separated logically
- audit storage must be append-oriented
- read projection may be rebuilt from authoritative storage
- consumer read projection failure must not destroy authoritative truth

# ============================================================
# 14. POLICY / SECURITY / PRIVACY POSTURE
# ============================================================

policy_rules:
- only public or governed directory data may enter canonical profile truth
- prohibited sensitive private data must not be scraped into this domain
- source prohibition lists must be enforceable
- all reviewer overrides require reason code and audit

security_rules:
- reviewer endpoints require elevated capability
- source credentials, if any, must remain outside consumer app exposure
- batch execution context must be traceable
- cross-app read must be permission-gated

privacy_rules:
- this domain is public-company-intelligence, not private-person-intelligence
- do not widen scope into private personal data
- officer handling must stay within public business-context evidence

# ============================================================
# 15. OPERATIONS / ALERT THRESHOLDS
# ============================================================

freshness_targets:
- official registry / filing sources: refresh target within 24h for enabled high-priority companies
- trusted directory sources: refresh target within 7d
- low-priority companies may use governed staggered refresh

alerts:
- source failure rate > 20 percent in one scheduled run
- parse failure > 5 percent for one source version
- review queue older than 72h for priority items
- projection refresh failure on active publish
- strong-source conflict spike above normal baseline

recovery_rules:
- rerun may be source-scoped or batch-scoped
- rerun must preserve old audit and log history
- partial_success batch must remain inspectable
- failed projection rebuild may be replayed without refetch when authoritative storage is intact

retention_rules:
- raw source snapshots: retain minimum 180 days
- batch logs: retain minimum 180 days
- change audit: retain minimum 365 days
- active profile history: retain until governed archive policy says otherwise

# ============================================================
# 16. EXACT INTEGRATION DIRECTION
# ============================================================

NameCardManager:
- may query company profile assistance
- may request normalization helper
- must not directly overwrite final company public profile

Business contact domain:
- may consume canonical company/officer public read models
- may store local app interpretation separately
- local interpretation must not outrank Public Company Intelligence truth

ERP publication preflight:
- may consume company identity verification support
- must treat this domain as assistive read support, not ERP legal truth replacement

review workbench:
- owns governed human decision path
- is allowed to invoke review decision endpoint

# ============================================================
# 17. IMPLEMENTATION ORDER
# ============================================================

fixed_order:
1. source registry and batch job skeleton
2. raw snapshot storage
3. normalization candidate generation
4. confidence / conflict reason generation
5. review queue
6. final profile publish path
7. read projection
8. consumer integrations
9. alerting / rerun / retention hardening

# ============================================================
# 18. AUTHORITATIVE RESOLUTION RULE
# ============================================================

If an older draft file under 250.public-company-intelligence conflicts with
this supplement, this supplement wins.

If a future back-ported canonical file is created and explicitly states that it
supersedes a corresponding section here, the newer explicit canonical file wins.

Until such back-porting is completed, implementation must use this supplement
as the authoritative contract.

# ============================================================
# 19. RESULT
# ============================================================

result:
- Public Company Intelligence is now implementation-ready in design terms.
- Remaining work is file-by-file back-porting and implementation,
  not conceptual reopening.
