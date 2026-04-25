# ============================================================
# NAMECARDMANAGER API EXACT PAYLOAD
# ============================================================

status: canonical
app: NameCardManager
category: 03.business-app

scope:
- Fix exact API request / response payloads for v1 implementation.
- Payload canon remains in NameCardManager / BusinessOS.
- CommonOS may render forms and lists, but does not own payload canon.

common_transport_envelope:
request:
  requestId: string
  traceId: string
  clientTimestamp: string ISO-8601
  actor:
    actorId: string
    actorType: enum(user, ai_worker, system)
  appCode: name_card_manager
  companyId: string nullable
  payload: object

response:
  requestId: string
  traceId: string
  serverTimestamp: string ISO-8601
  syncStatus: enum(synced, queued, conflict, failed)
  result: object nullable
  error: object nullable

error_envelope:
  errorCode: string
  errorMessage: string
  errorDetails: object nullable

pagination_envelope:
  items: array
  nextPageToken: string nullable
  totalCount: integer nullable

endpoint_1_card_intake_create:
  method: POST
  path: /api/v1/name-card-manager/card-intakes
  request_payload:
    intakeId: string nullable
    sourceType: enum(camera, file_upload, manual, import)
    imageAttachmentId: string nullable
    rawText: string nullable
    captureTimestamp: string ISO-8601 nullable
    localDraftId: string nullable
    offlineQueueId: string nullable
  response_result:
    intakeId: string
    intakeStatus: enum(draft, pending_review, extracted, rejected)
    reviewRequired: boolean
    extractedPreview:
      personName: string nullable
      companyName: string nullable
      departmentName: string nullable
      titleName: string nullable
      email: string nullable
      phone: string nullable

endpoint_2_card_extraction_review_submit:
  method: POST
  path: /api/v1/name-card-manager/card-intakes/{intakeId}/review
  request_payload:
    intakeId: string
    decision: enum(approve, reject, request_edit)
    correctedFields:
      personName: string nullable
      companyName: string nullable
      departmentName: string nullable
      titleName: string nullable
      email: string nullable
      phone: string nullable
      addressText: string nullable
      memo: string nullable
  response_result:
    contactId: string nullable
    companyId: string nullable
    intakeStatus: enum(approved, rejected, edit_required)
    relationshipCandidateIds: array<string>

endpoint_3_contact_list:
  method: GET
  path: /api/v1/name-card-manager/contacts
  query:
    keyword: string nullable
    companyId: string nullable
    relationshipStatus: enum(active, inactive, unknown) nullable
    pageToken: string nullable
    pageSize: integer nullable
  response_result:
    items:
      - contactId: string
        personName: string
        companyName: string nullable
        titleName: string nullable
        email: string nullable
        phone: string nullable
        relationshipStatus: enum(active, inactive, unknown)
        lastInteractionAt: string ISO-8601 nullable
    nextPageToken: string nullable
    totalCount: integer nullable

endpoint_4_contact_detail:
  method: GET
  path: /api/v1/name-card-manager/contacts/{contactId}
  response_result:
    contactId: string
    personName: string
    company:
      companyId: string nullable
      companyName: string nullable
    departmentName: string nullable
    titleName: string nullable
    email: string nullable
    phone: string nullable
    addressText: string nullable
    memo: string nullable
    relationshipStatus: enum(active, inactive, unknown)
    timeline:
      - eventId: string
        eventType: string
        eventTitle: string
        eventAt: string ISO-8601
        sourceApp: string nullable

endpoint_5_relationship_merge_review:
  method: POST
  path: /api/v1/name-card-manager/relationship-merge-reviews
  request_payload:
    primaryContactId: string
    candidateContactId: string
    decision: enum(merge, keep_separate, postpone)
    reason: string nullable
  response_result:
    mergeReviewId: string
    mergeStatus: enum(merged, kept_separate, postponed)
    resultingContactId: string nullable

non_goals:
- No entitlement decision in this API payload.
- No pricing decision in this API payload.
- No secrets.
- No CommonOS-owned business payload canon.
