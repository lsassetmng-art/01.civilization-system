
<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/000_NAME_CARD_MANAGER_INDEX.md -->
# ============================================================
# NAME CARD MANAGER INDEX
# ============================================================

status: canonical
layer: index
system: applications
application: NameCardManager
directory: .
owner: Boss
prepared_by: Zero

files:
- 000_NAME_CARD_MANAGER_INDEX.md
- 010.constitution/010_INDEX.md
- 020.architecture/020_INDEX.md
- 030.model/030_INDEX.md
- 060.integration/060_INDEX.md
- 090.interface/090_INDEX.md
- 120.implementation/120_INDEX.md
- 900.meta/900_INDEX.md

- 900.meta/900420_NAMECARDMANAGER_DIFF_SUMMARY_AUDIT_MEMO.md

- 020.architecture/021140_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_ADDITIVE_PLAN.md

- 060.integration/060330_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_API_STARTER.md

- 120.implementation/120310_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_IMPLEMENTATION_SKELETON.md

- 900.meta/900430_NAMECARDMANAGER_PHASE_A_ENTRY_AUDIT_MEMO.md

- 120.implementation/120320_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_EXACT_SQL.md

- 900.meta/900440_NAMECARDMANAGER_PHASE_A_DDL_SQL_AUDIT_NOTE.md

- 060.integration/060340_NAMECARDMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md

- 900.meta/900450_NAMECARDMANAGER_PHASE_A_API_DTO_AUDIT_NOTE.md

- 120.implementation/120330_NAMECARDMANAGER_PHASE_A_REPOSITORY_SERVICE_STUB_FILE_PLAN.md

- 900.meta/900460_NAMECARDMANAGER_PHASE_A_STUB_FILE_PLAN_AUDIT_NOTE.md

- 120.implementation/120340_NAMECARDMANAGER_PHASE_A_MODULE_IMPLEMENTATION_TASK_BREAKDOWN.md

- 900.meta/900470_NAMECARDMANAGER_PHASE_A_MODULE_TASK_AUDIT_NOTE.md

- 120.implementation/120350_NAMECARDMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 900.meta/900480_NAMECARDMANAGER_PHASE_A_STUB_CONTENT_ORDER_AUDIT_NOTE.md

- 120.implementation/120360_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FILE_GENERATION_COMMAND_PACK.md

- 900.meta/900490_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_COMMAND_PACK_AUDIT_NOTE.md

- 120.implementation/120370_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_IMAGE_STAGING_COMMAND_PACK.md

- 900.meta/900500_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_COMMAND_PACK_AUDIT_NOTE.md

- 120.implementation/120380_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FINALIZE_RELATIONSHIP_TIMELINE_COMMAND_PACK.md

- 120.implementation/120390_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

- 120.implementation/120400_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

- 120.implementation/120410_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

- 900.meta/900510_NAMECARDMANAGER_PHASE_A_BUNDLED_READINESS_AUDIT_NOTE.md

- 120.implementation/120420_NAMECARDMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120.implementation/120430_NAMECARDMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

- 900.meta/900520_NAMECARDMANAGER_PHASE_A_DESIGN_CLOSURE_AUDIT_NOTE.md

- 900.meta/900530_NAMECARDMANAGER_NEXT_APP_TRANSITION_HANDOFF.md

- 900.meta/900540_NAMECARDMANAGER_REUSABLE_DIFF_AUDIT_RECIPE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/000_NAME_CARD_MANAGER_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_INDEX.md -->
- 011110_NAMECARDMANAGER_COMPETITIVE_POSITIONING_NOTE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/010_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/011110_NAMECARDMANAGER_COMPETITIVE_POSITIONING_NOTE.md -->
# ============================================================
# NAMECARDMANAGER COMPETITIVE POSITIONING NOTE
# ============================================================

status: draft
layer: constitution
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines the stable competitive positioning of NameCardManager.

positioning:
  - NameCardManager is not an OCR-only scanner utility.
  - It converts business cards into organization-owned relationship assets.
  - It separates app sharing from ERP publication.
  - It emphasizes relationship visibility and company context.
  - It bridges BusinessOS storage to governed ERP publication.

non_primary_competition:
  - pure OCR accuracy race
  - generic personal contact app positioning
  - full CRM replacement positioning

decision:
  - prefer relationship depth over OCR novelty
  - prefer governed sharing over uncontrolled export
  - prefer BusinessOS canonical ownership over ERP-first ownership

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/010.constitution/011110_NAMECARDMANAGER_COMPETITIVE_POSITIONING_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_INDEX.md -->
- 021120_NAMECARDMANAGER_CAPTURE_AND_IMAGE_STAGING_ARCHITECTURE.md
- 021130_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_ARCHITECTURE.md

- 021140_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_ADDITIVE_PLAN.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/020_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/021120_NAMECARDMANAGER_CAPTURE_AND_IMAGE_STAGING_ARCHITECTURE.md -->
# ============================================================
# NAMECARDMANAGER CAPTURE AND IMAGE STAGING ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

goal:
  - support fast mobile intake
  - support front/back image capture
  - support offline-safe temporary staging
  - support later manual correction
  - support safe commit into canonical namecard state

flow:
  - create capture session
  - capture front image
  - optionally capture back image
  - store binaries in protected staging
  - review / rotate / retake
  - save draft if offline
  - commit staged refs into canonical namecard record
  - cleanup abandoned staged binaries later

rules:
  - staged images are protected
  - staged images are not ERP payload
  - access is owner/editor scoped
  - binary content stays outside main relational rows

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/021120_NAMECARDMANAGER_CAPTURE_AND_IMAGE_STAGING_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/021130_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_ARCHITECTURE.md -->
# ============================================================
# NAMECARDMANAGER RELATIONSHIP TIMELINE ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

goal:
  - show same-company context
  - show introducer relationships
  - show project-related relationships
  - show order-related relationships
  - show company-level chronology of contact and activity

authoritative_sources:
  - namecard_record
  - namecard_relationship
  - namecard_order_history
  - namecard_recent_activity
  - publication_history
  - approval_history

derived_views:
  - person_relationship_view
  - company_timeline_view

policy:
  - confirmed relationships have highest priority
  - inferred relationships are allowed with lower confidence
  - company timeline may contain direct and derived events
  - UI must distinguish confirmed and inferred context

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/021130_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_ARCHITECTURE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/021140_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_ADDITIVE_PLAN.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/020.architecture/021140_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_ADDITIVE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030510_NAMECARD_COMPANY_TIMELINE_MODEL.md -->
# ============================================================
# NAMECARD COMPANY TIMELINE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

model_type: derived_read_model

fields:
  - timeline_event_id
  - company_group_key
  - primary_company_name
  - event_at
  - event_type
  - source_type
  - source_id
  - primary_namecard_id
  - related_namecard_ids
  - summary_label
  - detail_excerpt
  - priority_weight
  - visibility_scope
  - is_inferred
  - confidence_score
  - created_at
  - updated_at

event_types:
  - namecard_created
  - namecard_updated
  - meeting_logged
  - followup_suggested
  - order_related_event
  - relationship_confirmed
  - relationship_inferred
  - erp_publication_requested
  - erp_publication_completed

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030510_NAMECARD_COMPANY_TIMELINE_MODEL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_INDEX.md -->
- 030510_NAMECARD_COMPANY_TIMELINE_MODEL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/030.model/030_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060290_NAMECARDMANAGER_RELATIONSHIP_QUERY_PAYLOAD.md -->
# ============================================================
# NAMECARDMANAGER RELATIONSHIP QUERY PAYLOAD
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

request_json:
  {
    "namecard_id": "uuid",
    "include_same_company": true,
    "include_introducer_chain": true,
    "include_project_related": true,
    "include_order_related": true,
    "include_unconfirmed": false,
    "depth_limit": 2,
    "max_items": 50
  }

response_json:
  {
    "success": true,
    "data": {
      "relationships": [
        {
          "relationship_id": "uuid",
          "target_namecard_id": "uuid",
          "target_label": "string",
          "relationship_type": "same_company",
          "relationship_label": "営業部",
          "is_user_confirmed": true,
          "confidence_score": 1.0,
          "display_priority": 10
        }
      ]
    },
    "validation_code": null,
    "error_code": null,
    "message": null
  }

validation:
  - namecard_id required
  - depth_limit must be positive
  - max_items must be bounded

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060290_NAMECARDMANAGER_RELATIONSHIP_QUERY_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060300_NAMECARDMANAGER_COMPANY_TIMELINE_PAYLOAD.md -->
# ============================================================
# NAMECARDMANAGER COMPANY TIMELINE PAYLOAD
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

request_json:
  {
    "company_group_key": "string",
    "from_at": "timestamp or null",
    "to_at": "timestamp or null",
    "event_types": [
      "namecard_created",
      "meeting_logged",
      "relationship_confirmed"
    ],
    "include_inferred": true,
    "page": 1,
    "page_size": 50
  }

response_json:
  {
    "success": true,
    "data": {
      "items": [
        {
          "timeline_event_id": "uuid",
          "event_at": "timestamp",
          "event_type": "meeting_logged",
          "source_type": "activity",
          "source_id": "uuid",
          "primary_namecard_id": "uuid",
          "summary_label": "展示会後の初回打ち合わせ",
          "detail_excerpt": "A製品の要件確認を実施",
          "is_inferred": false,
          "confidence_score": 1.0
        }
      ],
      "paging": {
        "page": 1,
        "page_size": 50,
        "total_count": 1
      }
    },
    "validation_code": null,
    "error_code": null,
    "message": null
  }

validation:
  - company_group_key required
  - page and page_size required
  - from_at must not be later than to_at

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060300_NAMECARDMANAGER_COMPANY_TIMELINE_PAYLOAD.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060330_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_API_STARTER.md -->
# ============================================================
# NAMECARDMANAGER PHASE A CAPTURE TIMELINE API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-api-starter

purpose:
Defines the Phase A API starter boundary for the newly added
capture staging and company timeline capabilities. This document
does not replace the existing exact payload foundation. It narrows
the first implementation slice.

phase_a_api_goals:
- create capture session
- upload or register staged images
- finalize capture session into normalized draft path
- query relationship view using fixed request family
- query company timeline using fixed request family

phase_a_endpoint_set:
- POST /api/v1/namecard/capture-sessions
- POST /api/v1/namecard/capture-sessions/{capture_session_id}/images
- POST /api/v1/namecard/capture-sessions/{capture_session_id}/finalize
- POST /api/v1/namecard/relationship/query
- POST /api/v1/namecard/company-timeline/query

endpoint_post_capture_sessions:
  purpose:
    - starts a capture session before image staging begins
  request_minimum:
    - companyId
    - sourcePlatform
    - localeCode
  response_minimum:
    - captureSessionId
    - captureStatus
    - startedAt

endpoint_post_capture_session_images:
  purpose:
    - registers staged image metadata under a session
  request_minimum:
    - captureSessionId
    - imageStorageKey
    - imageSideCode
    - imageOrderNo
  response_minimum:
    - captureImageStagingId
    - stagingStatus
    - acceptedAt

endpoint_post_capture_session_finalize:
  purpose:
    - closes staging and moves to normalized draft path
  request_minimum:
    - captureSessionId
    - finalizeMode
  response_minimum:
    - captureSessionId
    - captureStatus
    - generatedDraftId
    - warnings

endpoint_post_relationship_query:
  purpose:
    - returns relationship-oriented view based on the exact request family
  request_reference:
    - use the already added relationship query exact payload as source of truth
  phase_a_constraints:
    - supported for direct card context and company context
    - no advanced graph expansion beyond declared payload

endpoint_post_company_timeline_query:
  purpose:
    - returns company timeline event list based on the exact request family
  request_reference:
    - use the already added company timeline exact payload as source of truth
  phase_a_constraints:
    - server-side paging required
    - event type filter supported
    - date range filter supported
    - no free-form aggregation builder in phase_a

phase_a_response_rules:
- exact field names must stay stable once implemented
- all time values use ISO-8601
- no binary image data in API response body
- visibility-filtered data must be removed server-side
- audit and history remain separate concerns

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- processing_not_ready
- internal_error

explicit_non_scope:
- no bulk import API in this slice
- no advanced enrichment orchestration in this slice
- no ERP publication execution in this slice
- no offline sync replay expansion in this slice
- no fuzzy relationship inference API in this slice

implementation_handoff:
- controllers should implement only the endpoint set in this document first
- exact DTOs must align with existing payload foundation documents
- repository calls must follow the additive DDL plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060330_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_API_STARTER.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060340_NAMECARDMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-api-dto-freeze

purpose:
Freezes the Phase A request and response DTO field set for the
capture staging and company timeline slice. This document narrows
implementation ambiguity without replacing the existing exact
payload foundation documents.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- relationship query and company timeline query must remain aligned
  with their previously added exact payload documents
- no binary image body fields in DTOs
- all timestamps use ISO-8601 strings
- all ids use uuid string format

endpoint_01_post_capture_sessions:
  route: POST /api/v1/namecard/capture-sessions
  request_fields:
    - companyId: uuid string, required
    - sourcePlatform: string, required
    - localeCode: string, optional
    - deviceLabel: string, optional
  response_fields:
    - captureSessionId: uuid string, required
    - companyId: uuid string, required
    - captureStatus: string, required
    - sourcePlatform: string, required
    - localeCode: string, nullable
    - deviceLabel: string, nullable
    - startedAt: ISO-8601 string, required
    - finalizedAt: ISO-8601 string, nullable
    - abandonedAt: ISO-8601 string, nullable
    - createdAt: ISO-8601 string, required
    - updatedAt: ISO-8601 string, required

endpoint_02_post_capture_session_images:
  route: POST /api/v1/namecard/capture-sessions/{captureSessionId}/images
  path_fields:
    - captureSessionId: uuid string, required
  request_fields:
    - imageStorageKey: string, required
    - imageSideCode: string, required
    - imageOrderNo: integer, required
    - imageHash: string, optional
    - imageWidth: integer, optional
    - imageHeight: integer, optional
  response_fields:
    - captureImageStagingId: uuid string, required
    - captureSessionId: uuid string, required
    - companyId: uuid string, required
    - imageStorageKey: string, required
    - imageSideCode: string, required
    - imageOrderNo: integer, required
    - qualityScore: decimal, nullable
    - ocrAttemptCount: integer, required
    - stagingStatus: string, required
    - lastProcessedAt: ISO-8601 string, nullable
    - createdAt: ISO-8601 string, required
    - updatedAt: ISO-8601 string, required

endpoint_03_post_capture_session_finalize:
  route: POST /api/v1/namecard/capture-sessions/{captureSessionId}/finalize
  path_fields:
    - captureSessionId: uuid string, required
  request_fields:
    - finalizeMode: string, required
    - preferredPrimaryImageId: uuid string, optional
    - noteText: string, optional
  response_fields:
    - captureSessionId: uuid string, required
    - captureStatus: string, required
    - generatedDraftId: uuid string, nullable
    - warningCodes: string array, required
    - finalizedAt: ISO-8601 string, nullable
    - updatedAt: ISO-8601 string, required

endpoint_04_post_relationship_query:
  route: POST /api/v1/namecard/relationship/query
  source_of_truth:
    - 060290_NAMECARDMANAGER_RELATIONSHIP_QUERY_PAYLOAD.md
  phase_a_freeze_rule:
    - no local field rename allowed
    - use the exact request and response field names already fixed there
    - implementation may only reduce unsupported combinations, not rename fields

endpoint_05_post_company_timeline_query:
  route: POST /api/v1/namecard/company-timeline/query
  source_of_truth:
    - 060300_NAMECARDMANAGER_COMPANY_TIMELINE_PAYLOAD.md
  phase_a_freeze_rule:
    - no local field rename allowed
    - use the exact request and response field names already fixed there
    - paging fields and date filter fields must stay consistent there

shared_error_response:
  fields:
    - errorCode: string, required
    - errorMessage: string, required
    - requestId: string, required
    - details: object, nullable

field_value_rules:
- captureStatus is text code, not localized label
- imageSideCode is text code, not localized label
- finalizeMode is text code, not localized label
- warningCodes is array of text codes
- nullable fields must be returned as null, not omitted, once endpoint contract is frozen
- unknown fields must not be silently added in Phase A runtime responses

non_scope:
- no bulk import DTO here
- no ERP publication DTO here
- no offline replay DTO expansion here
- no advanced enrichment orchestration DTO here

implementation_handoff:
- controller request classes must use these exact field names
- controller response classes must use these exact field names
- service layer may use internal domain names, but mapper output must match this contract
- relationship query and company timeline query must defer to their existing exact payload documents

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060340_NAMECARDMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_INDEX.md -->
- 060290_NAMECARDMANAGER_RELATIONSHIP_QUERY_PAYLOAD.md
- 060300_NAMECARDMANAGER_COMPANY_TIMELINE_PAYLOAD.md

- 060330_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_API_STARTER.md

- 060340_NAMECARDMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/060.integration/060_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090330_NAMECARD_CAPTURE_SCREEN_INTERFACE.md -->
# ============================================================
# NAMECARD CAPTURE SCREEN INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

sections:
  - capture_header
  - front_image_slot
  - back_image_slot
  - retake_controls
  - rotate_controls
  - quick_field_preview
  - save_draft_action
  - commit_action

states:
  - empty
  - front_only
  - front_and_back_ready
  - draft_saved_offline
  - commit_in_progress
  - commit_failed
  - validation_warning

rules:
  - mobile first
  - front side capture is primary
  - back side capture is optional
  - commit must not depend on OCR completion
  - offline save must be explicit

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090330_NAMECARD_CAPTURE_SCREEN_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090340_NAMECARD_COMPANY_TIMELINE_INTERFACE.md -->
# ============================================================
# NAMECARD COMPANY TIMELINE INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

sections:
  - company_header
  - key_people_summary
  - timeline_filter_bar
  - timeline_event_list
  - inferred_event_toggle
  - quick_jump_to_relationships
  - quick_jump_to_recent_activity

event_card_fields:
  - event_at
  - summary_label
  - source_badge
  - related_person_badges
  - inferred_badge_if_needed
  - detail_excerpt
  - deep_link_action

rules:
  - newest first by default
  - compact on mobile
  - richer context on tablet and pc
  - inferred events must be visually distinct

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090340_NAMECARD_COMPANY_TIMELINE_INTERFACE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_INDEX.md -->
- 090330_NAMECARD_CAPTURE_SCREEN_INTERFACE.md
- 090340_NAMECARD_COMPANY_TIMELINE_INTERFACE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/090.interface/090_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120300_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_IMPLEMENTATION_GUIDE.md -->
# ============================================================
# NAMECARDMANAGER RELATIONSHIP TIMELINE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

direction:
  - do not rewrite the core schema
  - prefer additive query and read-model implementation
  - reuse existing relationship, activity, and order link structures
  - keep company timeline derived first
  - materialize later only if needed

phase_order:
  - freeze relationship query payload
  - freeze company timeline payload
  - implement relationship query endpoint
  - implement company timeline read query
  - expose capture staging screen contract
  - expose company timeline screen contract
  - wire ui afterward

no_break_rules:
  - no destructive rename
  - no ERP-first storage conversion
  - no collapse of approval and publication separation
  - no replacement of existing app share model

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120300_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_IMPLEMENTATION_GUIDE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120310_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_IMPLEMENTATION_SKELETON.md -->
# ============================================================
# NAMECARDMANAGER PHASE A CAPTURE TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-implementation-skeleton

purpose:
Defines the first implementation skeleton for capture staging and
company timeline support so that coding can begin without reopening
core design decisions.

implementation_policy:
- additive only
- exact payload first
- repository and service boundaries explicit
- audit and history writes remain separate
- do not mix image binary handling into relational repository logic

recommended_server_modules:
- api/controller
- application/service
- application/validator
- application/mapper
- domain/model
- infrastructure/repository
- infrastructure/storage
- infrastructure/audit

phase_a_skeleton_units:
- CaptureSessionController
- CaptureSessionService
- CaptureSessionValidator
- CaptureSessionRepository
- CaptureImageStagingController
- CaptureImageStagingService
- CaptureImageStagingRepository
- RelationshipQueryController
- RelationshipQueryService
- CompanyTimelineQueryController
- CompanyTimelineQueryService
- CompanyTimelineEventRepository
- NamecardAuditWriter

responsibility_split:
- controller:
  - request parsing
  - response serialization
  - auth context handoff
- service:
  - use case orchestration
  - transaction boundary decision
  - visibility filtering coordination
- validator:
  - required field validation
  - enum and mode validation
  - phase_a boundary enforcement
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence only
  - no business branching
- storage:
  - staged image storage key registration
  - no business timeline logic
- audit:
  - append auditable events after state change

phase_a_build_order:
- step_01_create_capture_session_path
- step_02_create_capture_image_staging_path
- step_03_create_capture_finalize_path
- step_04_connect_relationship_query_to_existing_payload_family
- step_05_connect_company_timeline_query_to_materialized_event_rows
- step_06_add audit write path
- step_07_add role visibility tests
- step_08_add integration test baseline

minimum_test_families:
- create_capture_session_success
- create_capture_session_validation_failure
- register_staged_image_success
- finalize_capture_success
- finalize_capture_conflict
- relationship_query_visibility_filtered
- company_timeline_query_paging
- company_timeline_query_date_filter
- forbidden_access_rejected

phase_a_exit_ready_definition:
- controllers compile against frozen DTO names
- service boundaries are stable
- additive repositories exist for each new row family
- timeline query works with paging and filters
- capture staging path works end to end without ERP execution
- audit trail is emitted on each state-changing path

explicit_non_scope:
- no UI implementation in this document
- no final OCR provider lock here
- no ERP publication execution here
- no advanced recommendation ranking here
- no shared component extraction in this slice

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120310_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_IMPLEMENTATION_SKELETON.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120320_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_EXACT_SQL.md -->
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

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120320_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_EXACT_SQL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120330_NAMECARDMANAGER_PHASE_A_REPOSITORY_SERVICE_STUB_FILE_PLAN.md -->
# ============================================================
# NAMECARDMANAGER PHASE A REPOSITORY SERVICE STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-stub-file-plan

purpose:
Defines the first implementation-ready stub file plan for the
Phase A capture staging and company timeline slice.
This document fixes file boundaries before code creation begins.

implementation_policy:
- additive only
- do not rewrite unrelated existing modules
- preserve existing exact payload foundation
- preserve existing physical schema core assumptions
- do not embed Japanese literals in Java source
- strings and localized text remain outside Java runtime code

target_package_base:
- com.lsam.NameCardManager

target_server_source_root_example:
- src/main/java/com/lsam/NameCardManager

target_test_source_root_example:
- src/test/java/com/lsam/NameCardManager

phase_a_scope_modules:
- capture session create
- capture image staging register
- capture session finalize
- relationship query bridge
- company timeline query
- audit write bridge

recommended_stub_tree:
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureSessionController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureImageStagingController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureFinalizeController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/RelationshipQueryController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CompanyTimelineQueryController.java

- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CreateCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RegisterCaptureImageRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/FinalizeCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RelationshipQueryRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CompanyTimelineQueryRequest.java

- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureImageStagingResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/FinalizeCaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/RelationshipQueryResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CompanyTimelineQueryResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryService.java

- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CreateCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RegisterCaptureImageValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/FinalizeCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RelationshipQueryValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CompanyTimelineQueryValidator.java

- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureImageStagingMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/FinalizeCaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/RelationshipQueryMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CompanyTimelineQueryMapper.java

- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureSession.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureImageStaging.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CompanyTimelineEvent.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/NamecardRelationshipView.java

- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/RelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/StagedImageStoragePort.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/NamecardAuditPort.java

- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java
- src/main/java/com/lsam/NameCardManager/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java

- src/main/java/com/lsam/NameCardManager/config/namecard/NamecardPhaseAConfig.java

- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryServiceTest.java

file_role_notes:
- controller:
  - request to service entry
  - auth context handoff
  - response return only
- request dto:
  - exact API field contract
- response dto:
  - exact API response contract
- validator:
  - required field check
  - enum and phase boundary check
- mapper:
  - dto and domain conversion only
- service:
  - use case orchestration
  - transaction boundary coordination
- domain model:
  - runtime meaning carrier
- domain port:
  - stable boundary for persistence and external services
- jdbc repository:
  - SQL-backed persistence adapter
- storage adapter:
  - staged image storage key handling
- audit adapter:
  - audit append bridge only
- config:
  - bean wiring for Phase A scope

minimum_stub_creation_order:
- 01 request and response dto
- 02 validators
- 03 controllers
- 04 domain models
- 05 domain ports
- 06 services
- 07 jdbc repositories
- 08 storage and audit adapters
- 09 config
- 10 service tests

module_dependency_rule:
- controller depends on dto, validator, service
- service depends on domain model, mapper, port
- repository adapter depends on port contract and sql access layer
- dto must not depend on infrastructure
- domain model must not depend on controller

alignment_requirements:
- dto field names must follow the Phase A API DTO freeze document
- row family assumptions must follow the Phase A DDL exact SQL document
- relationship query and company timeline query must follow previously fixed exact payload documents

non_scope:
- no actual Java file generation in this step
- no Spring annotation decision lock in this step
- no framework replacement in this step
- no Android client file plan in this step
- no other BusinessOS app touched

next_action:
- break this plan into module-by-module implementation task list
- then create exact file skeleton content order

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120330_NAMECARDMANAGER_PHASE_A_REPOSITORY_SERVICE_STUB_FILE_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120340_NAMECARDMANAGER_PHASE_A_MODULE_IMPLEMENTATION_TASK_BREAKDOWN.md -->
# ============================================================
# NAMECARDMANAGER PHASE A MODULE IMPLEMENTATION TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-module-implementation-task-breakdown

purpose:
Breaks the Phase A stub file plan into module-by-module execution tasks
so implementation can proceed in a narrow, dependency-safe order.

baseline_dependencies:
- Phase A DDL exact SQL document
- Phase A API DTO field freeze
- Phase A repository and service stub file plan
- previously fixed relationship query payload
- previously fixed company timeline payload

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no ERP execution in Phase A
- audit write path remains separate from business mutation path
- no Japanese literals in Java source

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes for Phase A endpoints
  target_files:
    - CreateCaptureSessionRequest.java
    - RegisterCaptureImageRequest.java
    - FinalizeCaptureSessionRequest.java
    - RelationshipQueryRequest.java
    - CompanyTimelineQueryRequest.java
    - CaptureSessionResponse.java
    - CaptureImageStagingResponse.java
    - FinalizeCaptureSessionResponse.java
    - RelationshipQueryResponse.java
    - CompanyTimelineQueryResponse.java
    - ErrorResponse.java
  tasks:
    - reflect exact field names from DTO freeze document
    - declare nullable and required fields explicitly
    - keep DTO package boundaries isolated from infrastructure
  done_definition:
    - all DTO classes compile
    - no field rename from freeze document
    - response contracts are structurally fixed

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - CreateCaptureSessionValidator.java
    - RegisterCaptureImageValidator.java
    - FinalizeCaptureSessionValidator.java
    - RelationshipQueryValidator.java
    - CompanyTimelineQueryValidator.java
  tasks:
    - required field validation
    - enum-like text code validation
    - paging and date range boundary validation
    - Phase A scope rejection for unsupported combinations
  done_definition:
    - each endpoint has dedicated validator
    - validation error mapping strategy is fixed

module_03_capture_session_create:
  goal:
    - create capture session end to end
  target_files:
    - CaptureSessionController.java
    - CaptureSessionService.java
    - CaptureSession.java
    - CaptureSessionRepository.java
    - JdbcCaptureSessionRepository.java
    - CaptureSessionMapper.java
  tasks:
    - wire controller to validator and service
    - implement create session orchestration
    - persist capture session row
    - map domain result to response DTO
    - emit audit append after success
  done_definition:
    - create endpoint works against repository boundary
    - capture session row persistence path is stable
    - audit append hook is defined

module_04_capture_image_staging_register:
  goal:
    - register one staged image under a capture session
  target_files:
    - CaptureImageStagingController.java
    - CaptureImageStagingService.java
    - CaptureImageStaging.java
    - CaptureImageStagingRepository.java
    - JdbcCaptureImageStagingRepository.java
    - ObjectStorageStagedImageStorageAdapter.java
    - CaptureImageStagingMapper.java
  tasks:
    - validate session existence and state
    - register image metadata only
    - preserve image order logic
    - keep binary payload outside repository
    - emit audit append after success
  done_definition:
    - staged image row insert path is stable
    - storage key handling boundary is explicit
    - session-image relation is enforced

module_05_capture_finalize:
  goal:
    - close staging and move session into finalized workflow state
  target_files:
    - CaptureFinalizeController.java
    - CaptureFinalizeService.java
    - FinalizeCaptureSessionMapper.java
  tasks:
    - validate finalize mode
    - load session and staged images
    - determine generatedDraftId handoff rule
    - update capture status and finalized timestamp
    - return warning code array when partial issues exist
    - emit audit append after success
  done_definition:
    - finalize path handles state transition safely
    - conflict case rules are fixed
    - response shape matches DTO freeze

module_06_relationship_query_bridge:
  goal:
    - connect existing relationship query exact payload to service and repository flow
  target_files:
    - RelationshipQueryController.java
    - RelationshipQueryService.java
    - RelationshipQueryRepository.java
    - JdbcRelationshipQueryRepository.java
    - RelationshipQueryMapper.java
    - NamecardRelationshipView.java
  tasks:
    - preserve exact payload field names
    - bind company scope and visibility filtering
    - connect existing relationship data sources without graph over-expansion
    - serialize response using fixed payload family
  done_definition:
    - relationship query endpoint is payload-compatible
    - visibility filtering occurs server-side
    - unsupported expansion paths remain blocked

module_07_company_timeline_query:
  goal:
    - expose timeline event rows through stable paging and filtering
  target_files:
    - CompanyTimelineQueryController.java
    - CompanyTimelineQueryService.java
    - CompanyTimelineEvent.java
    - CompanyTimelineEventRepository.java
    - JdbcCompanyTimelineEventRepository.java
    - CompanyTimelineQueryMapper.java
  tasks:
    - implement company scope filter
    - implement event type filter
    - implement date range filter
    - implement stable paging order using event_sort_ts desc
    - serialize exact response shape from fixed payload family
  done_definition:
    - timeline query works with paging and filter rules
    - row family aligns to Phase A DDL document
    - response shape aligns to exact payload document

module_08_audit_bridge:
  goal:
    - append auditable events after state-changing operations
  target_files:
    - NamecardAuditPort.java
    - DatabaseNamecardAuditAdapter.java
  tasks:
    - define audit append boundary
    - separate audit append from business mutation repository
    - write create, register, finalize event audit entries
  done_definition:
    - audit write is explicit and separate
    - mutation services can call audit port consistently

module_09_configuration:
  goal:
    - provide the minimum configuration and wiring boundary
  target_files:
    - NamecardPhaseAConfig.java
  tasks:
    - wire controller to service
    - wire service to repositories, storage adapter, and audit port
    - keep Phase A scope isolated from unrelated modules
  done_definition:
    - dependency wiring strategy is fixed
    - module boundaries remain clean

module_10_tests:
  goal:
    - establish minimum test safety net for Phase A slice
  target_files:
    - CaptureSessionServiceTest.java
    - CaptureImageStagingServiceTest.java
    - CaptureFinalizeServiceTest.java
    - RelationshipQueryServiceTest.java
    - CompanyTimelineQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - state conflict test
    - visibility filter test
    - paging and date filter test
  done_definition:
    - each service has baseline tests
    - critical Phase A paths are regression-checkable

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_capture_session_create
- module_04_capture_image_staging_register
- module_05_capture_finalize
- module_06_relationship_query_bridge
- module_07_company_timeline_query
- module_08_audit_bridge
- module_09_configuration
- module_10_tests

phase_a_ready_to_code_gate:
- dto names frozen
- validators fixed
- repository boundaries explicit
- service transaction boundaries explicit
- query payload compatibility preserved
- audit append boundary explicit

non_scope:
- no actual Java file generation in this document
- no Android client implementation here
- no OCR provider lock here
- no ERP publication execution here
- no other BusinessOS app touched

next_action:
- create exact stub content order plan
- then create file generation command pack for the first module slice

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120340_NAMECARDMANAGER_PHASE_A_MODULE_IMPLEMENTATION_TASK_BREAKDOWN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120350_NAMECARDMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->
# ============================================================
# NAMECARDMANAGER PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact content writing order for Phase A stub files so
file creation can proceed without reopening structure or dependency
questions.

baseline_documents:
- Phase A DDL exact SQL document
- Phase A API DTO field freeze
- Phase A repository and service stub file plan
- Phase A module implementation task breakdown

global_rules:
- additive only
- dto field names must match the freeze document exactly
- package boundaries must match the stub file plan exactly
- do not place Japanese literals in Java source
- controller must stay thin
- service owns orchestration
- repository owns persistence only
- audit path stays separate

content_order_strategy:
- start from the most dependency-light files
- lock contracts before orchestration
- add adapters only after domain ports exist
- add tests after service boundaries stabilize

phase_01_common_error_contract:
  files:
    - api/dto/common/ErrorResponse.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - fields
    - constructor or builder policy placeholder
    - getter policy placeholder
  completion_gate:
    - common error response shape is fixed

phase_02_request_dto_contracts:
  files:
    - api/dto/namecard/request/CreateCaptureSessionRequest.java
    - api/dto/namecard/request/RegisterCaptureImageRequest.java
    - api/dto/namecard/request/FinalizeCaptureSessionRequest.java
    - api/dto/namecard/request/RelationshipQueryRequest.java
    - api/dto/namecard/request/CompanyTimelineQueryRequest.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - exact fields in freeze order
    - no behavior beyond minimal accessor placeholder
  completion_gate:
    - request field names match freeze document exactly

phase_03_response_dto_contracts:
  files:
    - api/dto/namecard/response/CaptureSessionResponse.java
    - api/dto/namecard/response/CaptureImageStagingResponse.java
    - api/dto/namecard/response/FinalizeCaptureSessionResponse.java
    - api/dto/namecard/response/RelationshipQueryResponse.java
    - api/dto/namecard/response/CompanyTimelineQueryResponse.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - exact response fields in freeze order
    - nested item placeholders only where needed
  completion_gate:
    - response field names match freeze or payload source exactly

phase_04_validators:
  files:
    - application/validator/namecard/CreateCaptureSessionValidator.java
    - application/validator/namecard/RegisterCaptureImageValidator.java
    - application/validator/namecard/FinalizeCaptureSessionValidator.java
    - application/validator/namecard/RelationshipQueryValidator.java
    - application/validator/namecard/CompanyTimelineQueryValidator.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - validate method signature
    - required field checks
    - boundary checks
    - error emission placeholder
  completion_gate:
    - each validator has one primary validate entry

phase_05_domain_models:
  files:
    - domain/model/namecard/CaptureSession.java
    - domain/model/namecard/CaptureImageStaging.java
    - domain/model/namecard/CompanyTimelineEvent.java
    - domain/model/namecard/NamecardRelationshipView.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - identity fields
    - state fields
    - constructor policy placeholder
    - invariant comment placeholders
  completion_gate:
    - domain shapes align with DDL and payload family

phase_06_domain_ports:
  files:
    - domain/port/namecard/CaptureSessionRepository.java
    - domain/port/namecard/CaptureImageStagingRepository.java
    - domain/port/namecard/CompanyTimelineEventRepository.java
    - domain/port/namecard/RelationshipQueryRepository.java
    - domain/port/namecard/StagedImageStoragePort.java
    - domain/port/namecard/NamecardAuditPort.java
  write_order:
    - package declaration
    - imports
    - interface declaration
    - method signatures only
    - no infrastructure dependency
  completion_gate:
    - ports compile without adapter knowledge

phase_07_mappers:
  files:
    - application/mapper/namecard/CaptureSessionMapper.java
    - application/mapper/namecard/CaptureImageStagingMapper.java
    - application/mapper/namecard/FinalizeCaptureSessionMapper.java
    - application/mapper/namecard/RelationshipQueryMapper.java
    - application/mapper/namecard/CompanyTimelineQueryMapper.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - dto to domain method signature
    - domain to response method signature
    - placeholder bodies
  completion_gate:
    - mapping seams are explicit before services are written

phase_08_services:
  files:
    - application/service/namecard/CaptureSessionService.java
    - application/service/namecard/CaptureImageStagingService.java
    - application/service/namecard/CaptureFinalizeService.java
    - application/service/namecard/RelationshipQueryService.java
    - application/service/namecard/CompanyTimelineQueryService.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - dependency fields
    - constructor
    - public execute method
    - transaction boundary comment
    - audit call seam
  completion_gate:
    - each service shows orchestration boundary clearly

phase_09_controllers:
  files:
    - api/controller/namecard/CaptureSessionController.java
    - api/controller/namecard/CaptureImageStagingController.java
    - api/controller/namecard/CaptureFinalizeController.java
    - api/controller/namecard/RelationshipQueryController.java
    - api/controller/namecard/CompanyTimelineQueryController.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - dependency fields
    - endpoint method signature
    - validator call
    - service call
    - response return seam
  completion_gate:
    - controllers remain thin and dependency-safe

phase_10_repository_adapters:
  files:
    - infrastructure/repository/namecard/JdbcCaptureSessionRepository.java
    - infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java
    - infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java
    - infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - sql access dependency field
    - implemented port methods
    - sql placeholder comments aligned to DDL doc
  completion_gate:
    - adapters match domain ports exactly

phase_11_storage_and_audit_adapters:
  files:
    - infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java
    - infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - implemented port methods
    - storage key seam or audit append seam
  completion_gate:
    - external side effects are isolated behind ports

phase_12_configuration:
  files:
    - config/namecard/NamecardPhaseAConfig.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - bean wiring placeholders
    - module boundary comments
  completion_gate:
    - dependency graph is representable

phase_13_tests:
  files:
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryServiceTest.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - fixture placeholder
    - success test
    - validation failure test
    - conflict or filter test
  completion_gate:
    - baseline regression seam exists for each service

first_slice_recommended_start:
- ErrorResponse
- CreateCaptureSessionRequest
- CaptureSessionResponse
- CreateCaptureSessionValidator
- CaptureSession
- CaptureSessionRepository
- CaptureSessionMapper
- CaptureSessionService
- CaptureSessionController
- JdbcCaptureSessionRepository
- DatabaseNamecardAuditAdapter
- NamecardPhaseAConfig
- CaptureSessionServiceTest

why_this_order:
- starts from contract-first
- keeps early compile graph shallow
- enables first endpoint vertical slice earliest
- avoids repository adapter drift before port definition

non_scope:
- no actual Java file generation in this document
- no framework annotation lock here
- no Android client content order here
- no other BusinessOS app touched

next_action:
- create first-slice file generation command pack
- then create second-slice file generation command pack for image staging

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120350_NAMECARDMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120360_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FILE_GENERATION_COMMAND_PACK.md -->
# ============================================================
# NAMECARDMANAGER PHASE A FIRST SLICE FILE GENERATION COMMAND PACK
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-first-slice-file-generation-command-pack

purpose:
Fixes the exact Termux command pack for the first vertical slice of
Phase A stub generation. This step only registers the command pack
document. It does not execute the Java file generation.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.NameCardManager
- no Japanese literals in Java source
- additive only
- first slice means capture session create path first

first_slice_target_files:
- src/main/java/com/lsam/NameCardManager/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CreateCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CreateCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureSession.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionService.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureSessionController.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java
- src/main/java/com/lsam/NameCardManager/config/namecard/NamecardPhaseAConfig.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionServiceTest.java

target_root_policy:
- actual implementation repository root is not locked in this document
- default safe output root for later execution is:
  $HOME/.tmp/namecardmanager-phase-a-first-slice

exact_termux_command_pack:
    TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/namecardmanager-phase-a-first-slice}"
    SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/NameCardManager"
    SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/NameCardManager"

    mkdir -p \
      "$SRC_MAIN/api/dto/common" \
      "$SRC_MAIN/api/dto/namecard/request" \
      "$SRC_MAIN/api/dto/namecard/response" \
      "$SRC_MAIN/application/validator/namecard" \
      "$SRC_MAIN/domain/model/namecard" \
      "$SRC_MAIN/domain/port/namecard" \
      "$SRC_MAIN/application/mapper/namecard" \
      "$SRC_MAIN/application/service/namecard" \
      "$SRC_MAIN/api/controller/namecard" \
      "$SRC_MAIN/infrastructure/repository/namecard" \
      "$SRC_MAIN/infrastructure/audit/namecard" \
      "$SRC_MAIN/config/namecard" \
      "$SRC_TEST/application/service/namecard"

    cat > "$SRC_MAIN/api/dto/common/ErrorResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.common;

    public class ErrorResponse {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/request/CreateCaptureSessionRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class CreateCaptureSessionRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/CaptureSessionResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class CaptureSessionResponse {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/CreateCaptureSessionValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class CreateCaptureSessionValidator {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/CaptureSession.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class CaptureSession {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/CaptureSessionRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface CaptureSessionRepository {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/CaptureSessionMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class CaptureSessionMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CaptureSessionService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureSessionService {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CaptureSessionController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CaptureSessionController {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcCaptureSessionRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcCaptureSessionRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.audit.namecard;

    public class DatabaseNamecardAuditAdapter {
    }
    EOF

    cat > "$SRC_MAIN/config/namecard/NamecardPhaseAConfig.java" <<'EOF'
    package com.lsam.NameCardManager.config.namecard;

    public class NamecardPhaseAConfig {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CaptureSessionServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureSessionServiceTest {
    }
    EOF

    echo "DONE: first slice stub files generated under $TARGET_ROOT"

why_this_pack_shape:
- starts from the capture session vertical slice
- keeps the first runtime seam narrow
- avoids image staging and timeline query expansion too early
- preserves the contract-first order fixed in earlier documents

expected_follow_up_after_execution:
- fill DTO exact fields from the DTO freeze document
- add validator validate entry
- add repository method signatures
- add service orchestration seam
- add controller request to service seam
- add test fixture and first success case

non_scope:
- no execution in this document step
- no second-slice image staging generation here
- no framework annotation locking here
- no ERP publication generation here
- no Android client generation here

next_action:
- create second-slice file generation command pack
- then create field-filled version plan for the first-slice stubs

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120360_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FILE_GENERATION_COMMAND_PACK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120370_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_IMAGE_STAGING_COMMAND_PACK.md -->
# ============================================================
# NAMECARDMANAGER PHASE A SECOND SLICE IMAGE STAGING COMMAND PACK
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-second-slice-image-staging-command-pack

purpose:
Fixes the exact Termux command pack for the second vertical slice of
Phase A stub generation. This slice focuses on image staging under an
existing capture session. This step only registers the command pack
document. It does not execute the Java file generation.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.NameCardManager
- no Japanese literals in Java source
- additive only
- second slice means image staging register path after first slice

second_slice_target_files:
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RegisterCaptureImageRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureImageStagingResponse.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RegisterCaptureImageValidator.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureImageStaging.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/StagedImageStoragePort.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureImageStagingMapper.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingService.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureImageStagingController.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingServiceTest.java

target_root_policy:
- actual implementation repository root is not locked in this document
- default safe output root for later execution is:
  $HOME/.tmp/namecardmanager-phase-a-second-slice

exact_termux_command_pack:
    TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/namecardmanager-phase-a-second-slice}"
    SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/NameCardManager"
    SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/NameCardManager"

    mkdir -p \
      "$SRC_MAIN/api/dto/namecard/request" \
      "$SRC_MAIN/api/dto/namecard/response" \
      "$SRC_MAIN/application/validator/namecard" \
      "$SRC_MAIN/domain/model/namecard" \
      "$SRC_MAIN/domain/port/namecard" \
      "$SRC_MAIN/application/mapper/namecard" \
      "$SRC_MAIN/application/service/namecard" \
      "$SRC_MAIN/api/controller/namecard" \
      "$SRC_MAIN/infrastructure/repository/namecard" \
      "$SRC_MAIN/infrastructure/storage/namecard" \
      "$SRC_TEST/application/service/namecard"

    cat > "$SRC_MAIN/api/dto/namecard/request/RegisterCaptureImageRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class RegisterCaptureImageRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/CaptureImageStagingResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class CaptureImageStagingResponse {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/RegisterCaptureImageValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class RegisterCaptureImageValidator {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/CaptureImageStaging.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class CaptureImageStaging {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/CaptureImageStagingRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface CaptureImageStagingRepository {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/StagedImageStoragePort.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface StagedImageStoragePort {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/CaptureImageStagingMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class CaptureImageStagingMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CaptureImageStagingService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureImageStagingService {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CaptureImageStagingController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CaptureImageStagingController {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcCaptureImageStagingRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.storage.namecard;

    public class ObjectStorageStagedImageStorageAdapter {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CaptureImageStagingServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureImageStagingServiceTest {
    }
    EOF

    echo "DONE: second slice stub files generated under $TARGET_ROOT"

why_this_pack_shape:
- extends the first vertical slice without jumping to timeline or finalize too early
- keeps storage handling behind a port boundary
- keeps binary payload handling outside repository responsibilities
- preserves the contract-first order fixed in earlier documents

expected_follow_up_after_execution:
- fill request and response DTO exact fields from the DTO freeze document
- add validator validate entry
- add repository method signatures
- add service orchestration seam with session existence check
- add controller request to service seam
- add storage port method seam
- add test fixture and first success case

non_scope:
- no execution in this document step
- no finalize generation here
- no relationship query generation here
- no company timeline generation here
- no framework annotation locking here
- no Android client generation here

next_action:
- create third-slice command pack for finalize, relationship query, and company timeline
- then create field-filled second-slice stub content plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120370_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_IMAGE_STAGING_COMMAND_PACK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120380_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FINALIZE_RELATIONSHIP_TIMELINE_COMMAND_PACK.md -->
# ============================================================
# NAMECARDMANAGER PHASE A THIRD SLICE FINALIZE RELATIONSHIP TIMELINE COMMAND PACK
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-third-slice-command-pack

purpose:
Fixes the exact Termux command pack for the third vertical slice of
Phase A stub generation. This slice covers finalize, relationship query,
and company timeline query so the remaining functional surface can be
prepared without reopening earlier planning decisions.

execution_policy:
- design fixation only in this step
- actual execution is later
- Termux one-block style
- mkdir -p plus cat standard
- package base is com.lsam.NameCardManager
- no Japanese literals in Java source
- additive only
- third slice depends on first and second slice boundaries already fixed

third_slice_target_files:
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/FinalizeCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RelationshipQueryRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CompanyTimelineQueryRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/FinalizeCaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/RelationshipQueryResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CompanyTimelineQueryResponse.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/FinalizeCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RelationshipQueryValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CompanyTimelineQueryValidator.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CompanyTimelineEvent.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/NamecardRelationshipView.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/RelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/NamecardAuditPort.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/FinalizeCaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/RelationshipQueryMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CompanyTimelineQueryMapper.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryService.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureFinalizeController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/RelationshipQueryController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CompanyTimelineQueryController.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryServiceTest.java

target_root_policy:
- actual implementation repository root is not locked in this document
- default safe output root for later execution is:
  $HOME/.tmp/namecardmanager-phase-a-third-slice

exact_termux_command_pack:
    TARGET_ROOT="${TARGET_ROOT:-$HOME/.tmp/namecardmanager-phase-a-third-slice}"
    SRC_MAIN="$TARGET_ROOT/src/main/java/com/lsam/NameCardManager"
    SRC_TEST="$TARGET_ROOT/src/test/java/com/lsam/NameCardManager"

    mkdir -p \
      "$SRC_MAIN/api/dto/namecard/request" \
      "$SRC_MAIN/api/dto/namecard/response" \
      "$SRC_MAIN/application/validator/namecard" \
      "$SRC_MAIN/domain/model/namecard" \
      "$SRC_MAIN/domain/port/namecard" \
      "$SRC_MAIN/application/mapper/namecard" \
      "$SRC_MAIN/application/service/namecard" \
      "$SRC_MAIN/api/controller/namecard" \
      "$SRC_MAIN/infrastructure/repository/namecard" \
      "$SRC_MAIN/infrastructure/audit/namecard" \
      "$SRC_TEST/application/service/namecard"

    cat > "$SRC_MAIN/api/dto/namecard/request/FinalizeCaptureSessionRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class FinalizeCaptureSessionRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/request/RelationshipQueryRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class RelationshipQueryRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/request/CompanyTimelineQueryRequest.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.request;

    public class CompanyTimelineQueryRequest {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/FinalizeCaptureSessionResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class FinalizeCaptureSessionResponse {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/RelationshipQueryResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class RelationshipQueryResponse {
    }
    EOF

    cat > "$SRC_MAIN/api/dto/namecard/response/CompanyTimelineQueryResponse.java" <<'EOF'
    package com.lsam.NameCardManager.api.dto.namecard.response;

    public class CompanyTimelineQueryResponse {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/FinalizeCaptureSessionValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class FinalizeCaptureSessionValidator {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/RelationshipQueryValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class RelationshipQueryValidator {
    }
    EOF

    cat > "$SRC_MAIN/application/validator/namecard/CompanyTimelineQueryValidator.java" <<'EOF'
    package com.lsam.NameCardManager.application.validator.namecard;

    public class CompanyTimelineQueryValidator {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/CompanyTimelineEvent.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class CompanyTimelineEvent {
    }
    EOF

    cat > "$SRC_MAIN/domain/model/namecard/NamecardRelationshipView.java" <<'EOF'
    package com.lsam.NameCardManager.domain.model.namecard;

    public class NamecardRelationshipView {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/CompanyTimelineEventRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface CompanyTimelineEventRepository {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/RelationshipQueryRepository.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface RelationshipQueryRepository {
    }
    EOF

    cat > "$SRC_MAIN/domain/port/namecard/NamecardAuditPort.java" <<'EOF'
    package com.lsam.NameCardManager.domain.port.namecard;

    public interface NamecardAuditPort {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/FinalizeCaptureSessionMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class FinalizeCaptureSessionMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/RelationshipQueryMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class RelationshipQueryMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/mapper/namecard/CompanyTimelineQueryMapper.java" <<'EOF'
    package com.lsam.NameCardManager.application.mapper.namecard;

    public class CompanyTimelineQueryMapper {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CaptureFinalizeService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureFinalizeService {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/RelationshipQueryService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class RelationshipQueryService {
    }
    EOF

    cat > "$SRC_MAIN/application/service/namecard/CompanyTimelineQueryService.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CompanyTimelineQueryService {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CaptureFinalizeController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CaptureFinalizeController {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/RelationshipQueryController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class RelationshipQueryController {
    }
    EOF

    cat > "$SRC_MAIN/api/controller/namecard/CompanyTimelineQueryController.java" <<'EOF'
    package com.lsam.NameCardManager.api.controller.namecard;

    public class CompanyTimelineQueryController {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcCompanyTimelineEventRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.repository.namecard;

    public class JdbcRelationshipQueryRepository {
    }
    EOF

    cat > "$SRC_MAIN/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java" <<'EOF'
    package com.lsam.NameCardManager.infrastructure.audit.namecard;

    public class DatabaseNamecardAuditAdapter {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CaptureFinalizeServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CaptureFinalizeServiceTest {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/RelationshipQueryServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class RelationshipQueryServiceTest {
    }
    EOF

    cat > "$SRC_TEST/application/service/namecard/CompanyTimelineQueryServiceTest.java" <<'EOF'
    package com.lsam.NameCardManager.application.service.namecard;

    public class CompanyTimelineQueryServiceTest {
    }
    EOF

    echo "DONE: third slice stub files generated under $TARGET_ROOT"

why_this_pack_shape:
- closes the remaining major Phase A service surfaces in one slice
- keeps finalize, relationship query, and company timeline aligned
- preserves the earlier contract-first order
- leaves runtime details out of this document stage

expected_follow_up_after_execution:
- fill DTO exact fields from the DTO freeze and existing payload documents
- add validator validate entry
- add repository method signatures
- add service orchestration seam with audit port calls
- add controller request to service seam
- add tests for success, conflict, and filter behaviors

non_scope:
- no execution in this document step
- no framework annotation locking here
- no Android client generation here
- no ERP publication generation here

next_action:
- create field-filled content plans for first, second, and third slices
- then close Phase A readiness with a bundled audit memo

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120380_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FINALIZE_RELATIONSHIP_TIMELINE_COMMAND_PACK.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120390_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md -->
# ============================================================
# NAMECARDMANAGER PHASE A FIRST SLICE FIELD FILLED STUB CONTENT PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-first-slice-field-filled-plan

purpose:
Defines what the first slice stub files should contain once they move
from empty shell classes into field-filled implementation stubs.

slice_target:
- capture session create path

target_files:
- ErrorResponse.java
- CreateCaptureSessionRequest.java
- CaptureSessionResponse.java
- CreateCaptureSessionValidator.java
- CaptureSession.java
- CaptureSessionRepository.java
- CaptureSessionMapper.java
- CaptureSessionService.java
- CaptureSessionController.java
- JdbcCaptureSessionRepository.java
- DatabaseNamecardAuditAdapter.java
- NamecardPhaseAConfig.java
- CaptureSessionServiceTest.java

field_fill_rules:
- exact field names must follow the Phase A API DTO field freeze
- no field rename allowed
- nullable fields are explicit
- DTO classes stay behavior-light
- controller remains thin
- repository interface exposes persistence contract only

expected_stub_content_by_file:
- ErrorResponse.java:
  - fields:
    - errorCode
    - errorMessage
    - requestId
    - details
- CreateCaptureSessionRequest.java:
  - fields:
    - companyId
    - sourcePlatform
    - localeCode
    - deviceLabel
- CaptureSessionResponse.java:
  - fields:
    - captureSessionId
    - companyId
    - captureStatus
    - sourcePlatform
    - localeCode
    - deviceLabel
    - startedAt
    - finalizedAt
    - abandonedAt
    - createdAt
    - updatedAt
- CreateCaptureSessionValidator.java:
  - method seam:
    - validate(CreateCaptureSessionRequest request)
  - checks:
    - companyId required
    - sourcePlatform required
- CaptureSession.java:
  - fields aligned to capture_session row family
- CaptureSessionRepository.java:
  - method seams:
    - insert(CaptureSession captureSession)
    - findById(String captureSessionId)
- CaptureSessionMapper.java:
  - method seams:
    - toDomain(CreateCaptureSessionRequest request, String actorUserId)
    - toResponse(CaptureSession captureSession)
- CaptureSessionService.java:
  - dependency seams:
    - CaptureSessionRepository
    - NamecardAuditPort
    - CaptureSessionMapper
  - execute seam:
    - createCaptureSession(CreateCaptureSessionRequest request, String actorUserId)
- CaptureSessionController.java:
  - endpoint seam:
    - createCaptureSession(CreateCaptureSessionRequest request)
- JdbcCaptureSessionRepository.java:
  - implements CaptureSessionRepository
  - sql placeholder aligned to namecard_capture_session table
- DatabaseNamecardAuditAdapter.java:
  - method seam:
    - appendCreateCaptureSessionAudit(...)
- NamecardPhaseAConfig.java:
  - bean wiring placeholders for first slice
- CaptureSessionServiceTest.java:
  - tests:
    - createCaptureSession_success
    - createCaptureSession_validation_failure

first_slice_done_definition:
- request and response DTOs hold exact fields
- validator seam exists
- service orchestration seam exists
- repository interface seam exists
- test names and purpose are fixed

next_action:
- apply the same field-fill strategy to second and third slices

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120390_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120400_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md -->
# ============================================================
# NAMECARDMANAGER PHASE A SECOND SLICE FIELD FILLED STUB CONTENT PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-second-slice-field-filled-plan

purpose:
Defines what the second slice stub files should contain once they move
from empty shell classes into field-filled implementation stubs.

slice_target:
- capture image staging register path

target_files:
- RegisterCaptureImageRequest.java
- CaptureImageStagingResponse.java
- RegisterCaptureImageValidator.java
- CaptureImageStaging.java
- CaptureImageStagingRepository.java
- StagedImageStoragePort.java
- CaptureImageStagingMapper.java
- CaptureImageStagingService.java
- CaptureImageStagingController.java
- JdbcCaptureImageStagingRepository.java
- ObjectStorageStagedImageStorageAdapter.java
- CaptureImageStagingServiceTest.java

field_fill_rules:
- exact field names must follow the Phase A API DTO field freeze
- no binary payload field enters relational repository seam
- storage key is the boundary, not image bytes
- service must validate capture session context before insert

expected_stub_content_by_file:
- RegisterCaptureImageRequest.java:
  - fields:
    - imageStorageKey
    - imageSideCode
    - imageOrderNo
    - imageHash
    - imageWidth
    - imageHeight
- CaptureImageStagingResponse.java:
  - fields:
    - captureImageStagingId
    - captureSessionId
    - companyId
    - imageStorageKey
    - imageSideCode
    - imageOrderNo
    - qualityScore
    - ocrAttemptCount
    - stagingStatus
    - lastProcessedAt
    - createdAt
    - updatedAt
- RegisterCaptureImageValidator.java:
  - method seam:
    - validate(RegisterCaptureImageRequest request)
  - checks:
    - imageStorageKey required
    - imageSideCode required
    - imageOrderNo required
- CaptureImageStaging.java:
  - fields aligned to capture_image_staging row family
- CaptureImageStagingRepository.java:
  - method seams:
    - insert(CaptureImageStaging staging)
    - findBySessionId(String captureSessionId)
- StagedImageStoragePort.java:
  - method seams:
    - exists(String imageStorageKey)
    - registerReference(String imageStorageKey)
- CaptureImageStagingMapper.java:
  - method seams:
    - toDomain(String captureSessionId, RegisterCaptureImageRequest request, String companyId)
    - toResponse(CaptureImageStaging staging)
- CaptureImageStagingService.java:
  - dependency seams:
    - CaptureSessionRepository
    - CaptureImageStagingRepository
    - StagedImageStoragePort
    - NamecardAuditPort
    - CaptureImageStagingMapper
  - execute seam:
    - registerCaptureImage(String captureSessionId, RegisterCaptureImageRequest request, String actorUserId)
- CaptureImageStagingController.java:
  - endpoint seam:
    - registerCaptureImage(String captureSessionId, RegisterCaptureImageRequest request)
- JdbcCaptureImageStagingRepository.java:
  - implements CaptureImageStagingRepository
  - sql placeholder aligned to namecard_capture_image_staging table
- ObjectStorageStagedImageStorageAdapter.java:
  - implements StagedImageStoragePort
- CaptureImageStagingServiceTest.java:
  - tests:
    - registerCaptureImage_success
    - registerCaptureImage_validation_failure
    - registerCaptureImage_session_not_found

second_slice_done_definition:
- request and response DTOs hold exact fields
- session existence check seam is fixed
- storage boundary is explicit
- repository seam and service seam are fixed
- test names and purpose are fixed

next_action:
- apply the same field-fill strategy to third slice

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120400_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120410_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md -->
# ============================================================
# NAMECARDMANAGER PHASE A THIRD SLICE FIELD FILLED STUB CONTENT PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-third-slice-field-filled-plan

purpose:
Defines what the third slice stub files should contain once they move
from empty shell classes into field-filled implementation stubs.

slice_target:
- capture finalize
- relationship query
- company timeline query

target_files:
- FinalizeCaptureSessionRequest.java
- RelationshipQueryRequest.java
- CompanyTimelineQueryRequest.java
- FinalizeCaptureSessionResponse.java
- RelationshipQueryResponse.java
- CompanyTimelineQueryResponse.java
- FinalizeCaptureSessionValidator.java
- RelationshipQueryValidator.java
- CompanyTimelineQueryValidator.java
- CompanyTimelineEvent.java
- NamecardRelationshipView.java
- CompanyTimelineEventRepository.java
- RelationshipQueryRepository.java
- NamecardAuditPort.java
- FinalizeCaptureSessionMapper.java
- RelationshipQueryMapper.java
- CompanyTimelineQueryMapper.java
- CaptureFinalizeService.java
- RelationshipQueryService.java
- CompanyTimelineQueryService.java
- CaptureFinalizeController.java
- RelationshipQueryController.java
- CompanyTimelineQueryController.java
- JdbcCompanyTimelineEventRepository.java
- JdbcRelationshipQueryRepository.java
- DatabaseNamecardAuditAdapter.java
- CaptureFinalizeServiceTest.java
- RelationshipQueryServiceTest.java
- CompanyTimelineQueryServiceTest.java

field_fill_rules:
- finalize fields follow the DTO freeze exactly
- relationship query fields follow the existing relationship payload exactly
- company timeline fields follow the existing company timeline payload exactly
- no local field rename allowed
- visibility filtering occurs server-side
- paging order must align to event_sort_ts desc

expected_stub_content_by_file:
- FinalizeCaptureSessionRequest.java:
  - fields:
    - finalizeMode
    - preferredPrimaryImageId
    - noteText
- RelationshipQueryRequest.java:
  - fields:
    - copy exactly from relationship query payload source
- CompanyTimelineQueryRequest.java:
  - fields:
    - copy exactly from company timeline query payload source
- FinalizeCaptureSessionResponse.java:
  - fields:
    - captureSessionId
    - captureStatus
    - generatedDraftId
    - warningCodes
    - finalizedAt
    - updatedAt
- RelationshipQueryResponse.java:
  - fields:
    - copy exactly from relationship query payload source
- CompanyTimelineQueryResponse.java:
  - fields:
    - copy exactly from company timeline query payload source
- FinalizeCaptureSessionValidator.java:
  - method seam:
    - validate(FinalizeCaptureSessionRequest request)
  - checks:
    - finalizeMode required
- RelationshipQueryValidator.java:
  - method seam:
    - validate(RelationshipQueryRequest request)
- CompanyTimelineQueryValidator.java:
  - method seam:
    - validate(CompanyTimelineQueryRequest request)
  - checks:
    - paging boundary
    - date range boundary
- CompanyTimelineEvent.java:
  - fields aligned to company_timeline_event row family
- NamecardRelationshipView.java:
  - fields aligned to relationship response family
- CompanyTimelineEventRepository.java:
  - method seams:
    - queryTimeline(...)
- RelationshipQueryRepository.java:
  - method seams:
    - queryRelationship(...)
- NamecardAuditPort.java:
  - method seams:
    - appendFinalizeCaptureAudit(...)
    - appendRelationshipQueryAudit(...)
    - appendCompanyTimelineQueryAudit(...)
- FinalizeCaptureSessionMapper.java:
  - method seams:
    - toFinalizeResultResponse(...)
- RelationshipQueryMapper.java:
  - method seams:
    - toRelationshipResponse(...)
- CompanyTimelineQueryMapper.java:
  - method seams:
    - toTimelineResponse(...)
- CaptureFinalizeService.java:
  - dependency seams:
    - CaptureSessionRepository
    - CaptureImageStagingRepository
    - NamecardAuditPort
    - FinalizeCaptureSessionMapper
  - execute seam:
    - finalizeCaptureSession(String captureSessionId, FinalizeCaptureSessionRequest request, String actorUserId)
- RelationshipQueryService.java:
  - dependency seams:
    - RelationshipQueryRepository
    - RelationshipQueryMapper
  - execute seam:
    - queryRelationship(RelationshipQueryRequest request, String actorUserId)
- CompanyTimelineQueryService.java:
  - dependency seams:
    - CompanyTimelineEventRepository
    - CompanyTimelineQueryMapper
  - execute seam:
    - queryCompanyTimeline(CompanyTimelineQueryRequest request, String actorUserId)
- CaptureFinalizeController.java:
  - endpoint seam:
    - finalizeCaptureSession(String captureSessionId, FinalizeCaptureSessionRequest request)
- RelationshipQueryController.java:
  - endpoint seam:
    - queryRelationship(RelationshipQueryRequest request)
- CompanyTimelineQueryController.java:
  - endpoint seam:
    - queryCompanyTimeline(CompanyTimelineQueryRequest request)
- JdbcCompanyTimelineEventRepository.java:
  - implements CompanyTimelineEventRepository
- JdbcRelationshipQueryRepository.java:
  - implements RelationshipQueryRepository
- DatabaseNamecardAuditAdapter.java:
  - extend audit append seams for finalize and query operations
- CaptureFinalizeServiceTest.java:
  - tests:
    - finalizeCaptureSession_success
    - finalizeCaptureSession_conflict
- RelationshipQueryServiceTest.java:
  - tests:
    - queryRelationship_success
    - queryRelationship_visibility_filtered
- CompanyTimelineQueryServiceTest.java:
  - tests:
    - queryCompanyTimeline_success
    - queryCompanyTimeline_paging
    - queryCompanyTimeline_date_filter

third_slice_done_definition:
- finalize, relationship, and timeline file seams are fixed
- exact payload alignment is explicit
- visibility and paging rules are fixed
- test names and purpose are fixed

next_action:
- close Phase A readiness with a bundled audit memo

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120410_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120420_NAMECARDMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->
# ============================================================
# NAMECARDMANAGER PHASE A IMPLEMENTATION READY COMPLETION MEMO
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-implementation-ready-completion

purpose:
Declares that the NameCardManager Phase A planning layer has reached
implementation-ready status without starting real runtime generation.

completion_basis:
- competitive positioning note added
- capture and image staging architecture added
- relationship and company timeline architecture added
- company timeline model added
- relationship query and company timeline exact payloads added
- capture and company timeline interfaces added
- implementation guide added
- differential audit and summary audit completed
- Phase A DDL additive plan added
- Phase A API starter added
- Phase A implementation skeleton added
- exact DDL SQL document added
- API DTO field freeze added
- repository and service stub file plan added
- module implementation task breakdown added
- exact stub content order plan added
- first slice command pack added
- second slice command pack added
- third slice command pack added
- first, second, and third slice field-filled stub content plans added
- bundled readiness audit completed

what_is_now_fixed:
- Phase A row families and additive DDL direction
- Phase A API DTO contracts
- repository, service, mapper, validator, controller boundaries
- vertical-slice execution order
- file generation command packs for all planned slices
- field-fill expectations for all slices

what_is_not_started_yet:
- no real Java file generation in app source tree
- no SQL execution against business schema
- no runtime controller wiring in a live codebase
- no client implementation
- no ERP publication execution

implementation_ready_definition_met:
- the design no longer depends on unresolved major architectural questions
- the remaining work is execution and fill-in, not rediscovery
- slice-by-slice generation order is fixed
- payload and row-family drift is constrained
- audit separation remains explicit

recommended_start_when_execution_begins:
- start from first slice command pack only
- fill first-slice DTOs and seams before moving to second slice
- use second slice only after first slice compile boundary is acceptable
- use third slice only after first and second slice seams are stable
- preserve Sato review rule before any SQL apply step

stop_rule_for_design_layer:
- unless a contradiction or failure recovery case appears,
  no more micro design documents are required for basic Phase A start

conclusion:
- NameCardManager Phase A is now implementation-ready at the design level.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120420_NAMECARDMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120430_NAMECARDMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->
# ============================================================
# NAMECARDMANAGER PHASE A EXECUTION ENTRY PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-entry-protocol

purpose:
Defines the exact protocol to follow when the project later moves
from planning artifacts into actual stub generation or SQL execution.

entry_principles:
- do not begin from third slice
- do not generate all files at once without slice order
- do not execute SQL before Sato review
- keep additive only
- keep command packs as the sole sequence authority
- do not reopen already frozen DTO or payload names casually

execution_start_order:
- step_01:
  - execute first slice command pack into a safe output root
- step_02:
  - fill first-slice stub contents according to the first-slice field-filled plan
- step_03:
  - review compile surface and naming consistency
- step_04:
  - execute second slice command pack
- step_05:
  - fill second-slice stub contents according to the second-slice field-filled plan
- step_06:
  - review session-to-image staging seam
- step_07:
  - execute third slice command pack
- step_08:
  - fill third-slice stub contents according to the third-slice field-filled plan
- step_09:
  - review finalize, relationship, and timeline seams
- step_10:
  - only after design-to-code review, prepare SQL apply pack for Sato review
- step_11:
  - only after Sato review, execute additive SQL in controlled order

safe_output_policy:
- initial file generation should use .tmp or another safe isolated root
- do not inject generated stubs into a production source tree as the first action
- compare generated files against the design documents before relocation

review_gates:
- gate_01_contract_review:
  - DTO names match the freeze document exactly
- gate_02_boundary_review:
  - repository and service responsibilities remain separated
- gate_03_schema_review:
  - DDL aligns with the planned row families
- gate_04_query_review:
  - relationship and company timeline responses remain bound to their exact payload sources
- gate_05_audit_review:
  - audit append seams remain separate from mutation repositories

abort_conditions:
- a command pack requires reopening payload names
- a field-filled plan conflicts with earlier freeze documents
- existing physical schema core names differ from assumptions materially
- SQL needs destructive change
- slice order is being bypassed

handoff_statement:
- this protocol is the bridge between the planning layer and the later execution layer.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120430_NAMECARDMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_INDEX.md -->
- 120300_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_IMPLEMENTATION_GUIDE.md

- 120310_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_IMPLEMENTATION_SKELETON.md

- 120320_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_EXACT_SQL.md

- 120330_NAMECARDMANAGER_PHASE_A_REPOSITORY_SERVICE_STUB_FILE_PLAN.md

- 120340_NAMECARDMANAGER_PHASE_A_MODULE_IMPLEMENTATION_TASK_BREAKDOWN.md

- 120350_NAMECARDMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

- 120360_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FILE_GENERATION_COMMAND_PACK.md

- 120370_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_IMAGE_STAGING_COMMAND_PACK.md

- 120380_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FINALIZE_RELATIONSHIP_TIMELINE_COMMAND_PACK.md

- 120390_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

- 120400_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

- 120410_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

- 120420_NAMECARDMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md

- 120430_NAMECARDMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/120.implementation/120_INDEX.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900410_NAMECARDMANAGER_20260415_DIFF_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER 20260415 DIFF AUDIT NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

retained_without_rewrite:
  - BusinessOS canonical ownership
  - app share and ERP publication separation
  - approval/publication/audit/history separation
  - physical schema core
  - existing exact payload foundation
  - platform support direction

added_in_this_diff:
  - competitive positioning note
  - capture and image staging architecture
  - relationship and company timeline architecture
  - company timeline model
  - relationship query exact payload
  - company timeline exact payload
  - capture screen interface
  - company timeline interface
  - implementation guide

decision:
  - additive only
  - existing design remains primary

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900410_NAMECARDMANAGER_20260415_DIFF_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900420_NAMECARDMANAGER_DIFF_SUMMARY_AUDIT_MEMO.md -->
# ============================================================
# NAMECARDMANAGER DIFF SUMMARY AUDIT MEMO
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: diff-summary-audit

purpose:
Summarizes the 2026-04-15 differential additions applied to the
existing NameCardManager design and clarifies what was preserved,
what was added, what was intentionally left unchanged, and why
the change set is ready to support the next phase.

summary:
- This round was executed as additive-only reinforcement.
- The existing BusinessOS-centered truth model remains intact.
- The app is now positioned more clearly as an organizational
  asset and relationship visibility application, not an OCR-only utility.
- The main newly clarified differentiators are capture and image
  staging separation, relationship visibility, company timeline
  visibility, and exact payload support for those scenarios.

preserved_core:
- BusinessOS source of truth
- separation of app sharing and ERP publication
- separation of approval / publication / audit / history
- existing physical schema core
- existing platform support
- existing exact payload foundation

added_artifacts:
- 010.constitution/011110_NAMECARDMANAGER_COMPETITIVE_POSITIONING_NOTE.md
- 020.architecture/021120_NAMECARDMANAGER_CAPTURE_AND_IMAGE_STAGING_ARCHITECTURE.md
- 020.architecture/021130_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_ARCHITECTURE.md
- 030.model/030510_NAMECARD_COMPANY_TIMELINE_MODEL.md
- 060.integration/060290_NAMECARDMANAGER_RELATIONSHIP_QUERY_PAYLOAD.md
- 060.integration/060300_NAMECARDMANAGER_COMPANY_TIMELINE_PAYLOAD.md
- 090.interface/090330_NAMECARD_CAPTURE_SCREEN_INTERFACE.md
- 090.interface/090340_NAMECARD_COMPANY_TIMELINE_INTERFACE.md
- 120.implementation/120300_NAMECARDMANAGER_RELATIONSHIP_TIMELINE_IMPLEMENTATION_GUIDE.md
- 900.meta/900410_NAMECARDMANAGER_20260415_DIFF_AUDIT_NOTE.md

design_intent_clarified:
- OCR-only differentiation is not sufficient for durable BusinessOS value.
- Durable value lies in organizational retention, relationship memory,
  company timeline visibility, and ERP-bridge readiness.
- Capture is explicitly separated from later interpretation and use.
- Image staging is explicit so that retry, review, correction,
  and later enrichment remain manageable.

not_changed_in_this_round:
- no full rewrite of existing constitutional text
- no destructive replacement of existing architecture
- no Phase A implementation start in this memo
- no DDL execution in this memo
- no runtime or API code generation in this memo

audit_result:
- The change set is consistent with the existing NameCardManager direction.
- The additions strengthen differentiation without breaking prior boundaries.
- The design now supports company timeline and relationship visibility more clearly.
- The app remains aligned with BusinessOS and ERP bridge separation rules.

ledger_reflection_status:
- 000_BUSINESS_APP_LEDGER.md reflection completed on 2026-04-15
- duplicate-safe append handling confirmed

next_recommended_action:
- Proceed to Phase A exact API / DDL / implementation skeleton
  using the preserved core and the newly clarified differentiators
  as the entry baseline.

completion_statement:
- This memo closes the differential audit-summary layer for the
  2026-04-15 NameCardManager reinforcement round.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900420_NAMECARDMANAGER_DIFF_SUMMARY_AUDIT_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900430_NAMECARDMANAGER_PHASE_A_ENTRY_AUDIT_MEMO.md -->
# ============================================================
# NAMECARDMANAGER PHASE A ENTRY AUDIT MEMO
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-entry-audit

purpose:
Records the point where NameCardManager moved from differential
reinforcement into the Phase A entry-definition stage.

entry_decision:
- The application-level differential audit is complete.
- The next justified step is Phase A entry design, not a full redesign.
- The entry slice is capture staging plus company timeline support.

documents_added_in_this_step:
- 020.architecture/021140_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_ADDITIVE_PLAN.md
- 060.integration/060330_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_API_STARTER.md
- 120.implementation/120310_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_IMPLEMENTATION_SKELETON.md

why_this_slice_first:
- directly uses the newly clarified differentiators
- preserves existing core model and payload foundation
- gives a narrow implementation-ready path
- avoids reopening unrelated legacy areas

non_scope_confirmed:
- no destructive schema rewrite
- no runtime code generation here
- no SQL execution here
- no other application touched

next_action:
- create exact SQL document from the additive DDL plan
- freeze exact request and response DTO field set where still open
- prepare repository and service stub file plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900430_NAMECARDMANAGER_PHASE_A_ENTRY_AUDIT_MEMO.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900440_NAMECARDMANAGER_PHASE_A_DDL_SQL_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A DDL SQL AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-ddl-sql-audit

purpose:
Records that the Phase A additive DDL plan has now been translated
into exact SQL document form without executing it.

result:
- exact SQL document added
- SQL format follows the Termux plus DATABASE_URL rule
- additive-only stance preserved
- destructive rewrite avoided
- cross-table foreign key hard-fix intentionally deferred until existing core table names are revalidated

added_document:
- 120.implementation/120320_NAMECARDMANAGER_PHASE_A_CAPTURE_TIMELINE_DDL_EXACT_SQL.md

why_this_is_next:
- the prior step defined the DDL boundary
- this step fixes the execution-ready SQL shape
- the next step can now safely freeze API field names against real row families

next_recommended_action:
- create exact request and response DTO field freeze document
- then create repository and service stub file plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900440_NAMECARDMANAGER_PHASE_A_DDL_SQL_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900450_NAMECARDMANAGER_PHASE_A_API_DTO_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A API DTO AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-api-dto-audit

purpose:
Records that the Phase A API request and response DTO field set
has been frozen for the first implementation slice.

result:
- capture session create DTO fixed
- capture image staging DTO fixed
- capture finalize DTO fixed
- relationship query remains bound to existing exact payload source
- company timeline query remains bound to existing exact payload source

added_document:
- 060.integration/060340_NAMECARDMANAGER_PHASE_A_API_DTO_FIELD_FREEZE.md

why_this_is_next:
- DDL row families were already defined
- implementation now needs stable controller and mapper contracts
- DTO freeze reduces code churn before stub file planning

next_recommended_action:
- create repository and service stub file plan
- then create exact implementation task breakdown by module

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900450_NAMECARDMANAGER_PHASE_A_API_DTO_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900460_NAMECARDMANAGER_PHASE_A_STUB_FILE_PLAN_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A STUB FILE PLAN AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-stub-file-plan-audit

purpose:
Records that the Phase A implementation boundary now has an explicit
stub file plan for controller, service, repository, dto, mapper,
validator, domain, audit, storage, and tests.

result:
- stub file plan added
- package base fixed as com.lsam.NameCardManager
- repository and service boundaries made explicit
- file creation order clarified
- dependencies constrained before code generation

added_document:
- 120.implementation/120330_NAMECARDMANAGER_PHASE_A_REPOSITORY_SERVICE_STUB_FILE_PLAN.md

why_this_is_next:
- dto and ddl boundaries were already fixed
- implementation now needs explicit file and dependency boundaries
- this reduces churn before actual stub content design

next_recommended_action:
- create module-by-module implementation task breakdown
- then create exact stub content order plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900460_NAMECARDMANAGER_PHASE_A_STUB_FILE_PLAN_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900470_NAMECARDMANAGER_PHASE_A_MODULE_TASK_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A MODULE TASK AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-module-task-audit

purpose:
Records that the Phase A implementation boundary now has a module-level
task breakdown aligned with the DDL, DTO, and stub file plan documents.

result:
- module execution order fixed
- task ownership boundaries clarified by module
- done definitions fixed for each module
- implementation can now proceed without reopening major design choices

added_document:
- 120.implementation/120340_NAMECARDMANAGER_PHASE_A_MODULE_IMPLEMENTATION_TASK_BREAKDOWN.md

why_this_is_next:
- stub file plan fixed the file boundaries
- implementation still needed a module execution order and task slicing
- this step closes that planning gap

next_recommended_action:
- create exact stub content order plan
- then create first-slice file generation command pack

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900470_NAMECARDMANAGER_PHASE_A_MODULE_TASK_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900480_NAMECARDMANAGER_PHASE_A_STUB_CONTENT_ORDER_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A STUB CONTENT ORDER AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-stub-content-order-audit

purpose:
Records that the Phase A implementation planning now includes an
exact stub content order, not only a file list and module list.

result:
- file content writing order fixed
- dependency-light sequence clarified
- first vertical slice start point clarified
- implementation can now move to file generation command packs

added_document:
- 120.implementation/120350_NAMECARDMANAGER_PHASE_A_EXACT_STUB_CONTENT_ORDER_PLAN.md

why_this_is_next:
- module task breakdown fixed what to do
- this step fixed the exact order in which file contents should be written
- this reduces backtracking during stub creation

next_recommended_action:
- create first-slice file generation command pack
- then create second-slice file generation command pack

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900480_NAMECARDMANAGER_PHASE_A_STUB_CONTENT_ORDER_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900490_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_COMMAND_PACK_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A FIRST SLICE COMMAND PACK AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-first-slice-command-pack-audit

purpose:
Records that the first vertical slice of Phase A now has an exact
Termux-oriented file generation command pack fixed as a document.

result:
- first-slice command pack added
- safe default output root clarified
- first vertical slice boundaries fixed
- later execution can start from capture session path without reopening file order

added_document:
- 120.implementation/120360_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FILE_GENERATION_COMMAND_PACK.md

why_this_is_next:
- file order and module order were already fixed
- the next natural step was the exact command pack for the first slice
- this allows later execution without redesigning the stub boundary

next_recommended_action:
- create second-slice file generation command pack
- then create field-filled first-slice stub content plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900490_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_COMMAND_PACK_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900500_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_COMMAND_PACK_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A SECOND SLICE COMMAND PACK AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-second-slice-command-pack-audit

purpose:
Records that the second vertical slice of Phase A now has an exact
Termux-oriented file generation command pack fixed as a document.

result:
- second-slice image staging command pack added
- safe default output root clarified
- storage boundary explicitly separated through a port
- later execution can continue from first slice without reopening file boundaries

added_document:
- 120.implementation/120370_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_IMAGE_STAGING_COMMAND_PACK.md

why_this_is_next:
- the first slice fixed capture session creation
- the next natural slice is staged image registration
- this preserves the narrow implementation order without jumping ahead

next_recommended_action:
- create third-slice command pack for finalize, relationship query, and company timeline
- then create field-filled second-slice stub content plan

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900500_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_COMMAND_PACK_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900510_NAMECARDMANAGER_PHASE_A_BUNDLED_READINESS_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A BUNDLED READINESS AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-bundled-readiness-audit

purpose:
Records that the remaining Phase A preparation items were completed
as a bundled design set instead of continuing with excessively small
incremental documents.

bundle_contents:
- 120.implementation/120380_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FINALIZE_RELATIONSHIP_TIMELINE_COMMAND_PACK.md
- 120.implementation/120390_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md
- 120.implementation/120400_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md
- 120.implementation/120410_NAMECARDMANAGER_PHASE_A_THIRD_SLICE_FIELD_FILLED_STUB_CONTENT_PLAN.md

result:
- remaining third-slice command pack fixed
- first, second, and third slice field-fill plans fixed
- earlier small-step design work is now bundled into a coherent closing set
- NameCardManager Phase A documentation is materially closer to implementation-ready

readiness_statement:
- DDL entry boundary exists
- API DTO freeze exists
- repository and service stub file plan exists
- module task breakdown exists
- stub content order exists
- first and second command packs exist
- third command pack now exists
- slice-by-slice field-fill plans now exist

what_is_now_ready:
- command-pack-driven stub generation planning
- contract-first field filling
- module-by-module implementation start without reopening design intent
- later move to actual file generation with much lower ambiguity

remaining_before_real_generation:
- choose whether to keep generating only design artifacts or to start actual stub file creation
- if actual generation starts, use the command packs as the only source for sequence
- if SQL execution starts later, keep Sato review rule in force

conclusion:
- the bundled approach is now the recommended default for the remaining NameCardManager work
- small-step document creation is no longer necessary unless a failure recovery case appears

next_recommended_action:
- either start actual file generation from the first slice command pack
- or create one final implementation-ready completion memo and stop the planning layer

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900510_NAMECARDMANAGER_PHASE_A_BUNDLED_READINESS_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900520_NAMECARDMANAGER_PHASE_A_DESIGN_CLOSURE_AUDIT_NOTE.md -->
# ============================================================
# NAMECARDMANAGER PHASE A DESIGN CLOSURE AUDIT NOTE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-design-closure-audit

purpose:
Records that the NameCardManager Phase A planning layer has been
closed intentionally after enough artifacts were produced to support
implementation start without repeated micro-design churn.

closure_reason:
- the planning set now covers architecture, payload, DDL, implementation
  boundaries, execution order, command packs, and field-fill strategy
- remaining work is primarily execution-side, not missing design intent
- bundled design is now more appropriate than continuing tiny increments

closure_result:
- Phase A can start later from a fixed entry protocol
- the planning layer has a clear stop rule
- BusinessOS ledger can reflect Phase A design readiness
- further design additions should be exception-driven, not default

documents_added_in_closeout:
- 120.implementation/120420_NAMECARDMANAGER_PHASE_A_IMPLEMENTATION_READY_COMPLETION_MEMO.md
- 120.implementation/120430_NAMECARDMANAGER_PHASE_A_EXECUTION_ENTRY_PROTOCOL.md

recommended_default_after_closure:
- do not add more small design memos unless a contradiction is found
- if work resumes, start from the execution entry protocol
- if the project still wants planning-only closure, stop here cleanly

final_assessment:
- NameCardManager moved from differential reinforcement into
  implementation-ready Phase A design closure successfully.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900520_NAMECARDMANAGER_PHASE_A_DESIGN_CLOSURE_AUDIT_NOTE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900530_NAMECARDMANAGER_NEXT_APP_TRANSITION_HANDOFF.md -->
# ============================================================
# NAMECARDMANAGER NEXT APP TRANSITION HANDOFF
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: next-app-transition-handoff

purpose:
Closes the current NameCardManager planning stream cleanly and makes it
easy to move to the next BusinessOS application without reopening
already-settled NameCardManager planning questions.

current_status_summary:
- differential reinforcement completed
- ledger reflection completed
- audit summary completed
- Phase A entry design completed
- DDL direction completed
- API DTO freeze completed
- repository and service boundary planning completed
- slice command packs completed
- field-filled stub content plans completed
- Phase A design closure completed

what_should_not_be_reopened_by_default:
- competitive positioning direction
- capture and image staging separation
- relationship and company timeline differentiation
- BusinessOS and ERP bridge separation
- approval and publication separation
- audit and history separation
- exact payload freeze direction
- slice-based execution order

what_is_safe_to_defer:
- actual Java stub generation
- actual SQL apply
- runtime framework detail lock
- client implementation
- operational rollout planning

recommended_default_next_move:
- move to the next BusinessOS application using the same
  differential audit and reinforcement pattern
- do not continue creating micro-memos for NameCardManager unless
  contradiction, failure recovery, or explicit execution start appears

if_execution_is_later_requested:
- start from the Phase A execution entry protocol
- do not skip directly to later slices
- do not execute SQL before Sato review
- use command packs as the only sequence authority

handoff_statement:
- NameCardManager can now be treated as planning-closed and
  next-app-transition-ready.

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900530_NAMECARDMANAGER_NEXT_APP_TRANSITION_HANDOFF.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900540_NAMECARDMANAGER_REUSABLE_DIFF_AUDIT_RECIPE.md -->
# ============================================================
# NAMECARDMANAGER REUSABLE DIFF AUDIT RECIPE
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
directory: 900.meta
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: reusable-diff-audit-recipe

purpose:
Captures the reusable design recipe proven during the
NameCardManager reinforcement work so the next BusinessOS app can
be advanced faster and with fewer tiny iterations.

recommended_reuse_sequence:
- step_01:
  - preserve the existing core idea instead of rewriting by default
- step_02:
  - identify the real differentiator and make it explicit
- step_03:
  - add missing architecture notes only for the new differentiator
- step_04:
  - add missing model or payload documents only where the new value needs exactness
- step_05:
  - add interface notes only where behavior became newly visible
- step_06:
  - add implementation guide and diff audit memo
- step_07:
  - reflect the result in the BusinessOS ledger
- step_08:
  - move to Phase A entry documents only after the diff layer is coherent
- step_09:
  - freeze DDL, DTO, stub boundaries, and slice order
- step_10:
  - close the planning layer with a design closure memo

what_worked_well_here:
- additive-only reinforcement
- keeping the core concept intact
- introducing company timeline as a visible differentiator
- freezing DTO and DDL before code generation
- moving from micro-steps to bundled design once the base stabilized

what_to_avoid_next_time:
- reopening stable core text too early
- jumping to implementation before exact payload and row-family direction
- splitting into too many tiny memos after the footing becomes stable
- mixing audit concerns into mutation planning
- mixing storage-byte handling into relational persistence planning

default_bundle_strategy_for_next_app:
- bundle_01:
  - diff reinforcement plus audit
- bundle_02:
  - Phase A entry plus DDL plus DTO freeze
- bundle_03:
  - stub plan plus module tasks plus content order
- bundle_04:
  - command packs plus field-fill plans plus closure memo

success_definition_for_next_app:
- the next app reaches implementation-ready planning state
- the BusinessOS ledger reflects the new status
- the app can move to execution later without rediscovering core design intent

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900540_NAMECARDMANAGER_REUSABLE_DIFF_AUDIT_RECIPE.md -->

<!-- BEGIN FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_INDEX.md -->
- 900410_NAMECARDMANAGER_20260415_DIFF_AUDIT_NOTE.md

- 900420_NAMECARDMANAGER_DIFF_SUMMARY_AUDIT_MEMO.md

- 900430_NAMECARDMANAGER_PHASE_A_ENTRY_AUDIT_MEMO.md

- 900440_NAMECARDMANAGER_PHASE_A_DDL_SQL_AUDIT_NOTE.md

- 900450_NAMECARDMANAGER_PHASE_A_API_DTO_AUDIT_NOTE.md

- 900460_NAMECARDMANAGER_PHASE_A_STUB_FILE_PLAN_AUDIT_NOTE.md

- 900470_NAMECARDMANAGER_PHASE_A_MODULE_TASK_AUDIT_NOTE.md

- 900480_NAMECARDMANAGER_PHASE_A_STUB_CONTENT_ORDER_AUDIT_NOTE.md

- 900490_NAMECARDMANAGER_PHASE_A_FIRST_SLICE_COMMAND_PACK_AUDIT_NOTE.md

- 900500_NAMECARDMANAGER_PHASE_A_SECOND_SLICE_COMMAND_PACK_AUDIT_NOTE.md

- 900510_NAMECARDMANAGER_PHASE_A_BUNDLED_READINESS_AUDIT_NOTE.md

- 900520_NAMECARDMANAGER_PHASE_A_DESIGN_CLOSURE_AUDIT_NOTE.md

- 900530_NAMECARDMANAGER_NEXT_APP_TRANSITION_HANDOFF.md

- 900540_NAMECARDMANAGER_REUSABLE_DIFF_AUDIT_RECIPE.md

<!-- END FILE: /data/data/com.termux/files/home/01.civilization-system/07.applications/NameCardManager/900.meta/900_INDEX.md -->
