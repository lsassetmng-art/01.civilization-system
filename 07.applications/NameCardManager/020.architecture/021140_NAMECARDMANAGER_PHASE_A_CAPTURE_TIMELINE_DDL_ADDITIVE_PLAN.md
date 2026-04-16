# ============================================================
# NAMECARDMANAGER PHASE A CAPTURE TIMELINE DDL ADDITIVE PLAN
# ============================================================

status: canonical
layer: architecture
system: applications
application: NameCardManager
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-ddl-additive-plan

purpose:
Defines the additive-only Phase A DDL planning boundary required
to support capture session handling, image staging persistence,
and company timeline materialization without breaking the existing
physical schema core.

principles:
- additive only
- business schema only
- preserve existing physical schema core
- no destructive rename or replacement
- no DDL execution in this document
- exact execution SQL is a later step after this plan is approved

phase_a_target_capabilities:
- persist capture session lifecycle
- persist staged card images before normalization is finalized
- persist company timeline events for query speed and auditability
- preserve later ERP bridge compatibility

proposed_additive_tables:
- business.namecard_capture_session
- business.namecard_capture_image_staging
- business.namecard_company_timeline_event

table_business_namecard_capture_session:
  role:
    - groups one capture attempt across one or more images
    - separates capture lifecycle from final normalized card record
  recommended_columns:
    - capture_session_id uuid pk
    - company_id uuid not null
    - created_by_user_id uuid not null
    - capture_status text not null
    - source_platform text not null
    - locale_code text null
    - device_label text null
    - started_at timestamptz not null
    - finalized_at timestamptz null
    - abandoned_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null
  notes:
    - one session may produce zero or more staged images
    - one session may produce one finalized card draft in phase_a

table_business_namecard_capture_image_staging:
  role:
    - stores staged image metadata before final normalization
    - allows retry, reorder, manual review, and quality judgment
  recommended_columns:
    - capture_image_staging_id uuid pk
    - capture_session_id uuid not null
    - company_id uuid not null
    - image_storage_key text not null
    - image_side_code text not null
    - image_order_no integer not null
    - image_hash text null
    - image_width integer null
    - image_height integer null
    - quality_score numeric null
    - ocr_attempt_count integer not null
    - staging_status text not null
    - last_processed_at timestamptz null
    - created_at timestamptz not null
    - updated_at timestamptz not null
  notes:
    - binary payload is out of relational scope
    - storage key points to external object storage

table_business_namecard_company_timeline_event:
  role:
    - materializes company-level events for timeline query stability
    - supports company timeline UI without forcing expensive live joins
  recommended_columns:
    - company_timeline_event_id uuid pk
    - company_id uuid not null
    - related_namecard_id uuid null
    - related_person_id uuid null
    - event_type_code text not null
    - event_date date not null
    - event_sort_ts timestamptz not null
    - title_text text not null
    - summary_text text null
    - source_type_code text not null
    - source_record_id uuid null
    - visibility_scope_code text not null
    - created_by_user_id uuid not null
    - created_at timestamptz not null
    - updated_at timestamptz not null
  notes:
    - intended for company timeline query response
    - does not replace history or audit tables

recommended_indexes_phase_a:
- namecard_capture_session:
  - idx on company_id, started_at desc
  - idx on created_by_user_id, started_at desc
  - idx on capture_status
- namecard_capture_image_staging:
  - idx on capture_session_id, image_order_no
  - idx on company_id, created_at desc
  - idx on staging_status
- namecard_company_timeline_event:
  - idx on company_id, event_sort_ts desc
  - idx on company_id, event_type_code, event_sort_ts desc
  - idx on related_namecard_id
  - idx on related_person_id

foreign_key_direction_phase_a:
- capture_image_staging.capture_session_id
  -> namecard_capture_session.capture_session_id
- company_timeline_event.related_namecard_id
  -> existing business namecard root table when applicable
- company_timeline_event.related_person_id
  -> existing person/contact side table when applicable

explicit_non_scope:
- no destructive table rewrite
- no storage bucket DDL here
- no trigger implementation here
- no OCR engine decision here
- no ERP transmission DDL here

handoff_to_next_step:
- translate this plan into exact SQL blocks
- freeze request and response payloads against these row families
- create repository and service skeletons against this additive plan
