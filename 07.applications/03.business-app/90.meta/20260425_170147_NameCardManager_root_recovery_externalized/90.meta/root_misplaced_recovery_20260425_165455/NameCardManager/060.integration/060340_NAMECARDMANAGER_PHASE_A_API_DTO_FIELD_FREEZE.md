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
