# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# REVIEWED EXECUTION SQL ARTIFACT DRAFT
# ============================================================

status: reviewed-draft
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- execution-sql artifact draft
- still non-execution in this document
- reviewed against final decision package
- target schema is existing business schema

# ============================================================
# 0. PURPOSE
# ============================================================

This document stores the reviewed execution-SQL artifact draft for
Public Company Intelligence.

This is the first SQL artifact intended to be close to execution,
but it is still stored as design text only in this document.

# ============================================================
# 1. EXECUTION DECISIONS ALREADY REFLECTED
# ============================================================

reflected_decisions:
- schema: business
- id type: uuid
- id default: gen_random_uuid()
- state columns: text + check constraints
- freshness: source-type dependent policy
- reviewer_id: uuid
- outbox linkage: none in first implementation
- view strategy: normal views first
- review queue mutation: update in place
- source priority: field-specific

# ============================================================
# 2. REVIEWED SQL BODY DRAFT
# ============================================================

~~~sql
BEGIN;

-- ============================================================
-- 1. business.public_source_registry
-- ============================================================

CREATE TABLE IF NOT EXISTS business.public_source_registry (
  public_source_registry_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  source_code text NOT NULL,
  source_name text NOT NULL,
  source_type text NOT NULL,
  base_domain text,
  access_method text NOT NULL,
  robots_policy_status text NOT NULL DEFAULT 'unknown',
  terms_checked_at timestamptz,
  rate_limit_rule text,
  attribution_required boolean NOT NULL DEFAULT false,
  enabled boolean NOT NULL DEFAULT true,
  disabled_reason text,
  owner_note text,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_public_source_registry_source_code UNIQUE (source_code),
  CONSTRAINT chk_public_source_registry_robots_policy_status
    CHECK (robots_policy_status IN ('unknown','checked','blocked','disabled'))
);

-- ============================================================
-- 2. business.company_public_source_snapshot
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_public_source_snapshot (
  company_public_source_snapshot_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  source_registry_id uuid NOT NULL,
  source_reference text NOT NULL,
  source_url text,
  source_document_type text NOT NULL,
  source_published_at timestamptz,
  fetched_at timestamptz NOT NULL,
  fetch_status text NOT NULL,
  http_status integer,
  raw_title text,
  raw_body text,
  raw_payload_json jsonb,
  content_hash text NOT NULL,
  detected_company_name text,
  detected_corporate_number text,
  detected_security_code text,
  parse_state text NOT NULL DEFAULT 'raw_only',
  parse_error_reason text,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_company_public_source_snapshot_source_registry
    FOREIGN KEY (source_registry_id)
    REFERENCES business.public_source_registry(public_source_registry_id),
  CONSTRAINT uq_company_public_source_snapshot_source_reference_hash
    UNIQUE (source_registry_id, source_reference, content_hash),
  CONSTRAINT chk_company_public_source_snapshot_fetch_status
    CHECK (fetch_status IN ('queued','success','partial_success','failed','blocked','skipped')),
  CONSTRAINT chk_company_public_source_snapshot_parse_state
    CHECK (parse_state IN ('raw_only','parsed','parse_failed'))
);

-- ============================================================
-- 3. business.officer_public_source_snapshot
-- ============================================================

CREATE TABLE IF NOT EXISTS business.officer_public_source_snapshot (
  officer_public_source_snapshot_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  source_registry_id uuid NOT NULL,
  source_reference text NOT NULL,
  source_url text,
  fetched_at timestamptz NOT NULL,
  raw_company_name text,
  raw_officer_name text NOT NULL,
  raw_title text,
  raw_section_name text,
  raw_payload_json jsonb,
  content_hash text NOT NULL,
  parse_state text NOT NULL DEFAULT 'raw_only',
  parse_error_reason text,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_officer_public_source_snapshot_source_registry
    FOREIGN KEY (source_registry_id)
    REFERENCES business.public_source_registry(public_source_registry_id),
  CONSTRAINT uq_officer_public_source_snapshot_source_reference_hash
    UNIQUE (source_registry_id, source_reference, content_hash),
  CONSTRAINT chk_officer_public_source_snapshot_parse_state
    CHECK (parse_state IN ('raw_only','parsed','parse_failed'))
);

-- ============================================================
-- 4. business.company_public_profile
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_public_profile (
  company_public_profile_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  normalized_company_key text NOT NULL,
  canonical_company_name text NOT NULL,
  company_name_kana text,
  corporate_number text,
  security_code text,
  website_url text,
  ir_url text,
  phone_number text,
  postal_address text,
  prefecture text,
  country_code text,
  industry_primary text,
  industry_secondary text,
  listed_status text NOT NULL DEFAULT 'unknown',
  market_name text,
  company_status text NOT NULL DEFAULT 'unknown',
  business_summary text,
  representative_name text,
  latest_public_update_at timestamptz,
  freshness_score integer NOT NULL DEFAULT 0,
  normalization_state text NOT NULL DEFAULT 'raw_only',
  confidence_level text NOT NULL DEFAULT 'unknown',
  review_required boolean NOT NULL DEFAULT false,
  visibility_scope text NOT NULL DEFAULT 'public',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT uq_company_public_profile_normalized_company_key
    UNIQUE (normalized_company_key),
  CONSTRAINT chk_company_public_profile_listed_status
    CHECK (listed_status IN ('listed','non-listed','unknown')),
  CONSTRAINT chk_company_public_profile_company_status
    CHECK (company_status IN ('active','inactive','unknown')),
  CONSTRAINT chk_company_public_profile_normalization_state
    CHECK (normalization_state IN ('raw_only','parsed','normalized','matched','published','review_required','rejected')),
  CONSTRAINT chk_company_public_profile_confidence_level
    CHECK (confidence_level IN ('high','medium','low','unknown')),
  CONSTRAINT chk_company_public_profile_visibility_scope
    CHECK (visibility_scope IN ('public'))
);

-- ============================================================
-- 5. business.company_officer_profile
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_officer_profile (
  company_officer_profile_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  company_public_profile_id uuid NOT NULL,
  normalized_officer_key text NOT NULL,
  canonical_officer_name text NOT NULL,
  canonical_title text,
  title_rank integer,
  officer_role_type text,
  representative_flag boolean NOT NULL DEFAULT false,
  source_count integer NOT NULL DEFAULT 0,
  latest_source_at timestamptz,
  confidence_level text NOT NULL DEFAULT 'unknown',
  normalization_state text NOT NULL DEFAULT 'raw_only',
  review_required boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_company_officer_profile_company_public_profile
    FOREIGN KEY (company_public_profile_id)
    REFERENCES business.company_public_profile(company_public_profile_id),
  CONSTRAINT uq_company_officer_profile_company_officer_key
    UNIQUE (company_public_profile_id, normalized_officer_key),
  CONSTRAINT chk_company_officer_profile_confidence_level
    CHECK (confidence_level IN ('high','medium','low','unknown')),
  CONSTRAINT chk_company_officer_profile_normalization_state
    CHECK (normalization_state IN ('raw_only','parsed','normalized','matched','published','review_required','rejected'))
);

-- ============================================================
-- 6. business.company_public_profile_source_link
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_public_profile_source_link (
  company_public_profile_source_link_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  company_public_profile_id uuid NOT NULL,
  source_snapshot_id uuid NOT NULL,
  source_priority integer,
  field_name text NOT NULL,
  raw_value text,
  normalized_value text,
  selected_for_profile boolean NOT NULL DEFAULT false,
  confidence_level text NOT NULL DEFAULT 'unknown',
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_company_public_profile_source_link_profile
    FOREIGN KEY (company_public_profile_id)
    REFERENCES business.company_public_profile(company_public_profile_id),
  CONSTRAINT fk_company_public_profile_source_link_snapshot
    FOREIGN KEY (source_snapshot_id)
    REFERENCES business.company_public_source_snapshot(company_public_source_snapshot_id),
  CONSTRAINT uq_company_public_profile_source_link_field
    UNIQUE (company_public_profile_id, source_snapshot_id, field_name),
  CONSTRAINT chk_company_public_profile_source_link_confidence_level
    CHECK (confidence_level IN ('high','medium','low','unknown'))
);

-- ============================================================
-- 7. business.officer_profile_source_link
-- ============================================================

CREATE TABLE IF NOT EXISTS business.officer_profile_source_link (
  officer_profile_source_link_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  company_officer_profile_id uuid NOT NULL,
  source_snapshot_id uuid NOT NULL,
  source_priority integer,
  field_name text NOT NULL,
  raw_value text,
  normalized_value text,
  selected_for_profile boolean NOT NULL DEFAULT false,
  confidence_level text NOT NULL DEFAULT 'unknown',
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_officer_profile_source_link_profile
    FOREIGN KEY (company_officer_profile_id)
    REFERENCES business.company_officer_profile(company_officer_profile_id),
  CONSTRAINT fk_officer_profile_source_link_snapshot
    FOREIGN KEY (source_snapshot_id)
    REFERENCES business.officer_public_source_snapshot(officer_public_source_snapshot_id),
  CONSTRAINT uq_officer_profile_source_link_field
    UNIQUE (company_officer_profile_id, source_snapshot_id, field_name),
  CONSTRAINT chk_officer_profile_source_link_confidence_level
    CHECK (confidence_level IN ('high','medium','low','unknown'))
);

-- ============================================================
-- 8. business.company_normalization_candidate
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_normalization_candidate (
  company_normalization_candidate_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  raw_company_name text NOT NULL,
  normalized_company_key text NOT NULL,
  candidate_company_public_profile_id uuid,
  match_method text NOT NULL,
  match_score numeric,
  review_required boolean NOT NULL DEFAULT false,
  review_status text NOT NULL DEFAULT 'pending',
  reviewer_id uuid,
  reviewed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_company_normalization_candidate_profile
    FOREIGN KEY (candidate_company_public_profile_id)
    REFERENCES business.company_public_profile(company_public_profile_id),
  CONSTRAINT uq_company_normalization_candidate_identity
    UNIQUE (raw_company_name, normalized_company_key, candidate_company_public_profile_id),
  CONSTRAINT chk_company_normalization_candidate_review_status
    CHECK (review_status IN ('pending','approved','rejected','ignored','merged'))
);

-- ============================================================
-- 9. business.officer_normalization_candidate
-- ============================================================

CREATE TABLE IF NOT EXISTS business.officer_normalization_candidate (
  officer_normalization_candidate_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  raw_officer_name text NOT NULL,
  raw_title text,
  candidate_company_officer_profile_id uuid,
  match_method text NOT NULL,
  match_score numeric,
  review_required boolean NOT NULL DEFAULT false,
  review_status text NOT NULL DEFAULT 'pending',
  reviewer_id uuid,
  reviewed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_officer_normalization_candidate_profile
    FOREIGN KEY (candidate_company_officer_profile_id)
    REFERENCES business.company_officer_profile(company_officer_profile_id),
  CONSTRAINT uq_officer_normalization_candidate_identity
    UNIQUE (raw_officer_name, raw_title, candidate_company_officer_profile_id),
  CONSTRAINT chk_officer_normalization_candidate_review_status
    CHECK (review_status IN ('pending','approved','rejected','ignored','merged'))
);

-- ============================================================
-- 10. business.public_data_review_queue
-- ============================================================

CREATE TABLE IF NOT EXISTS business.public_data_review_queue (
  public_data_review_queue_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  queue_type text NOT NULL,
  target_table text NOT NULL,
  target_id text NOT NULL,
  issue_type text NOT NULL,
  issue_summary text NOT NULL,
  confidence_level text NOT NULL DEFAULT 'unknown',
  suggested_action text,
  review_status text NOT NULL DEFAULT 'pending',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT chk_public_data_review_queue_confidence_level
    CHECK (confidence_level IN ('high','medium','low','unknown')),
  CONSTRAINT chk_public_data_review_queue_review_status
    CHECK (review_status IN ('pending','approved','rejected','ignored','merged'))
);

-- ============================================================
-- 11. business.company_batch_job
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_batch_job (
  company_batch_job_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  job_type text NOT NULL,
  scheduled_at timestamptz,
  started_at timestamptz,
  finished_at timestamptz,
  job_status text NOT NULL,
  chunk_key text,
  source_scope text,
  target_scope text,
  attempt_count integer NOT NULL DEFAULT 0,
  success_count integer NOT NULL DEFAULT 0,
  failure_count integer NOT NULL DEFAULT 0,
  warning_count integer NOT NULL DEFAULT 0,
  triggered_by text NOT NULL DEFAULT 'system',
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT chk_company_batch_job_job_status
    CHECK (job_status IN ('queued','running','success','partial_success','failed','cancelled'))
);

-- ============================================================
-- 12. business.company_batch_job_log
-- ============================================================

CREATE TABLE IF NOT EXISTS business.company_batch_job_log (
  company_batch_job_log_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  company_batch_job_id uuid NOT NULL,
  log_level text NOT NULL,
  source_registry_id uuid,
  target_type text,
  target_id text,
  message_code text,
  message_text text NOT NULL,
  error_detail text,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_company_batch_job_log_job
    FOREIGN KEY (company_batch_job_id)
    REFERENCES business.company_batch_job(company_batch_job_id),
  CONSTRAINT fk_company_batch_job_log_source_registry
    FOREIGN KEY (source_registry_id)
    REFERENCES business.public_source_registry(public_source_registry_id),
  CONSTRAINT chk_company_batch_job_log_log_level
    CHECK (log_level IN ('debug','info','warn','error'))
);

-- ============================================================
-- 13. business.public_data_change_audit
-- ============================================================

CREATE TABLE IF NOT EXISTS business.public_data_change_audit (
  public_data_change_audit_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  target_type text NOT NULL,
  target_id text NOT NULL,
  changed_field text NOT NULL,
  before_value text,
  after_value text,
  source_basis text,
  change_reason text,
  changed_at timestamptz NOT NULL,
  batch_job_id uuid,
  CONSTRAINT fk_public_data_change_audit_batch_job
    FOREIGN KEY (batch_job_id)
    REFERENCES business.company_batch_job(company_batch_job_id)
);

COMMIT;
~~~

# ============================================================
# 3. SUMMARY
# ============================================================

This draft is now close to execution quality, but remains
stored as review text only in this document.

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
