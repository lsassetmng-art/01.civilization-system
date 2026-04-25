# ============================================================
# NAMECARDMANAGER PHASE A CAPTURE TIMELINE DDL EXACT SQL
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-ddl-exact-sql

purpose:
Provides the exact additive SQL block for the Phase A entry slice.
This document is execution-ready in format, but this step only
registers the design artifact. It does not execute SQL.

execution_rule:
- use Termux
- use DATABASE_URL
- use additive only
- do not rename or drop existing structures
- review by Sato before execution
- this document is for design fixation, not immediate apply

exact_sql_block:
    psql "$DATABASE_URL" <<'SQL'
    BEGIN;

    CREATE TABLE IF NOT EXISTS business.namecard_capture_session (
      capture_session_id uuid PRIMARY KEY,
      company_id uuid NOT NULL,
      created_by_user_id uuid NOT NULL,
      capture_status text NOT NULL,
      source_platform text NOT NULL,
      locale_code text NULL,
      device_label text NULL,
      started_at timestamptz NOT NULL,
      finalized_at timestamptz NULL,
      abandoned_at timestamptz NULL,
      created_at timestamptz NOT NULL DEFAULT now(),
      updated_at timestamptz NOT NULL DEFAULT now()
    );

    CREATE TABLE IF NOT EXISTS business.namecard_capture_image_staging (
      capture_image_staging_id uuid PRIMARY KEY,
      capture_session_id uuid NOT NULL,
      company_id uuid NOT NULL,
      image_storage_key text NOT NULL,
      image_side_code text NOT NULL,
      image_order_no integer NOT NULL,
      image_hash text NULL,
      image_width integer NULL,
      image_height integer NULL,
      quality_score numeric(10,4) NULL,
      ocr_attempt_count integer NOT NULL DEFAULT 0,
      staging_status text NOT NULL,
      last_processed_at timestamptz NULL,
      created_at timestamptz NOT NULL DEFAULT now(),
      updated_at timestamptz NOT NULL DEFAULT now(),
      CONSTRAINT fk_namecard_capture_image_staging_session
        FOREIGN KEY (capture_session_id)
        REFERENCES business.namecard_capture_session(capture_session_id)
    );

    CREATE TABLE IF NOT EXISTS business.namecard_company_timeline_event (
      company_timeline_event_id uuid PRIMARY KEY,
      company_id uuid NOT NULL,
      related_namecard_id uuid NULL,
      related_person_id uuid NULL,
      event_type_code text NOT NULL,
      event_date date NOT NULL,
      event_sort_ts timestamptz NOT NULL,
      title_text text NOT NULL,
      summary_text text NULL,
      source_type_code text NOT NULL,
      source_record_id uuid NULL,
      visibility_scope_code text NOT NULL,
      created_by_user_id uuid NOT NULL,
      created_at timestamptz NOT NULL DEFAULT now(),
      updated_at timestamptz NOT NULL DEFAULT now()
    );

    CREATE INDEX IF NOT EXISTS idx_namecard_capture_session_company_started_at
      ON business.namecard_capture_session (company_id, started_at DESC);

    CREATE INDEX IF NOT EXISTS idx_namecard_capture_session_created_by_started_at
      ON business.namecard_capture_session (created_by_user_id, started_at DESC);

    CREATE INDEX IF NOT EXISTS idx_namecard_capture_session_capture_status
      ON business.namecard_capture_session (capture_status);

    CREATE INDEX IF NOT EXISTS idx_namecard_capture_image_staging_session_order
      ON business.namecard_capture_image_staging (capture_session_id, image_order_no);

    CREATE INDEX IF NOT EXISTS idx_namecard_capture_image_staging_company_created_at
      ON business.namecard_capture_image_staging (company_id, created_at DESC);

    CREATE INDEX IF NOT EXISTS idx_namecard_capture_image_staging_status
      ON business.namecard_capture_image_staging (staging_status);

    CREATE INDEX IF NOT EXISTS idx_namecard_company_timeline_event_company_sort_ts
      ON business.namecard_company_timeline_event (company_id, event_sort_ts DESC);

    CREATE INDEX IF NOT EXISTS idx_namecard_company_timeline_event_company_type_sort_ts
      ON business.namecard_company_timeline_event (company_id, event_type_code, event_sort_ts DESC);

    CREATE INDEX IF NOT EXISTS idx_namecard_company_timeline_event_related_namecard_id
      ON business.namecard_company_timeline_event (related_namecard_id);

    CREATE INDEX IF NOT EXISTS idx_namecard_company_timeline_event_related_person_id
      ON business.namecard_company_timeline_event (related_person_id);

    COMMIT;
    SQL

design_notes:
- This SQL intentionally avoids destructive change.
- UUID generation policy is left to application or service side, or to a later default policy decision.
- Foreign keys to existing namecard and person roots are intentionally not hard-fixed here,
  because the existing physical schema core table names must be revalidated first.
- If the current core table names are confirmed, foreign keys for related_namecard_id and
  related_person_id should be added in a separate additive follow-up SQL.

review_checkpoints:
- validate existing business schema table names before adding cross-table foreign keys
- confirm company_id and user_id reference policy
- confirm whether updated_at trigger is already standardized globally
- confirm enum or text policy for status and type codes

non_scope:
- no SQL execution in this step
- no trigger creation in this step
- no storage bucket DDL in this step
- no RLS policy in this step
- no ERP publication tables in this step

next_action:
- freeze exact API DTO fields against this row family
- create stub file plan for repository and service implementation
