# ============================================================
# STREAM STUDIO VALIDATION AND ERROR CODE EXACT TABLE
# ============================================================

status: draft
layer: api-exact-table
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact validation code and error code tables for StreamStudio.

code_design_principles:
- codes are stable identifiers
- messages are localization targets and may change
- code names are uppercase snake case
- one failure response must have one primary code
- field-level validation may include multiple field_errors
- validation codes and business rule codes must not be mixed ambiguously

# ============================================================
# 1. VALIDATION CODE TABLE
# ============================================================

validation_codes:

  common:
    - code: REQUIRED
      meaning: mandatory field is missing
    - code: INVALID_FORMAT
      meaning: field format is invalid
    - code: INVALID_ENUM_VALUE
      meaning: enum value is unsupported
    - code: MAX_LENGTH_EXCEEDED
      meaning: string length exceeds maximum
    - code: MIN_LENGTH_NOT_MET
      meaning: string length is below minimum
    - code: INVALID_NUMBER
      meaning: numeric field is malformed
    - code: NEGATIVE_VALUE_NOT_ALLOWED
      meaning: negative value is not allowed
    - code: FUTURE_DATETIME_REQUIRED
      meaning: datetime must be in the future
    - code: INVALID_DATETIME_RANGE
      meaning: end is before start or range is otherwise invalid
    - code: INVALID_CURRENCY_CODE
      meaning: currency code is not accepted
    - code: EXPECTED_VERSION_REQUIRED
      meaning: optimistic lock version is required
    - code: AT_LEAST_ONE_FIELD_REQUIRED
      meaning: no mutable field was provided

  project_and_upload:
    - code: WORKSPACE_ID_REQUIRED
      meaning: workspace_id is missing
    - code: PROJECT_TITLE_REQUIRED
      meaning: project_title is missing
    - code: PROJECT_TITLE_MAX_LENGTH_200
      meaning: project title exceeds 200 characters
    - code: DEFAULT_LANGUAGE_REQUIRED
      meaning: default language is missing
    - code: FILE_SIZE_BYTES_POSITIVE_REQUIRED
      meaning: file size must be positive
    - code: MIME_TYPE_REQUIRED
      meaning: mime_type is missing
    - code: TARGET_ASSET_TYPE_REQUIRED
      meaning: target asset type is missing
    - code: RETRY_MODE_INVALID
      meaning: retry mode is invalid

  draft_asset:
    - code: ASSET_REF_REQUIRED
      meaning: asset_ref is missing
    - code: TITLE_MAX_LENGTH_200
      meaning: title exceeds 200 characters
    - code: DESCRIPTION_MAX_LENGTH_5000
      meaning: description exceeds 5000 characters
    - code: TAGS_MAX_COUNT_100
      meaning: too many tags were provided
    - code: THUMBNAIL_ASSET_REF_REQUIRED
      meaning: thumbnail asset ref is missing
    - code: LANGUAGE_CODE_REQUIRED
      meaning: subtitle language is missing
    - code: SOURCE_TYPE_REQUIRED
      meaning: subtitle source type is missing
    - code: FILE_ASSET_REF_REQUIRED_WHEN_UPLOADED
      meaning: uploaded subtitle requires file asset ref
    - code: MARKER_TYPE_REQUIRED
      meaning: edit marker type is missing
    - code: START_MS_NON_NEGATIVE_REQUIRED
      meaning: start_ms must be non-negative
    - code: END_MS_GREATER_THAN_START_MS_REQUIRED
      meaning: end_ms must be greater than start_ms

  review_and_approval:
    - code: REVIEW_REF_REQUIRED
      meaning: review_ref is missing
    - code: COMMENT_TYPE_REQUIRED
      meaning: comment type is missing
    - code: ANCHOR_MODE_REQUIRED
      meaning: anchor mode is missing
    - code: MESSAGE_BODY_REQUIRED
      meaning: message body is missing
    - code: REQUESTER_REF_REQUIRED
      meaning: requester_ref is missing
    - code: ASSIGNEE_REF_REQUIRED
      meaning: assignee_ref is missing
    - code: REVISION_SUMMARY_REQUIRED
      meaning: revision summary is missing
    - code: APPROVAL_REF_REQUIRED
      meaning: approval_ref is missing
    - code: APPROVAL_TYPE_REQUIRED
      meaning: approval type is missing
    - code: APPROVER_REFS_MIN_1
      meaning: at least one approver is required
    - code: DECISION_CODE_REQUIRED
      meaning: decision code is missing

  publish:
    - code: VISIBILITY_CODE_REQUIRED
      meaning: publish visibility is missing
    - code: SCHEDULED_PUBLISH_AT_REQUIRED
      meaning: scheduled publish datetime is required
    - code: CONNECTOR_ACCOUNT_REF_REQUIRED
      meaning: connector binding is required for external publish
    - code: PUBLISH_REF_REQUIRED
      meaning: publish_ref is missing
    - code: REQUEST_CHANNEL_REQUIRED
      meaning: request channel is missing
    - code: SCHEDULED_PUBLISH_AT_FUTURE_REQUIRED
      meaning: scheduled publish datetime must be future

  marketplace_listing:
    - code: LISTING_TITLE_REQUIRED
      meaning: listing title is missing
    - code: MARKETPLACE_CATEGORY_CODE_REQUIRED
      meaning: marketplace category is missing
    - code: SALE_VISIBILITY_CODE_REQUIRED
      meaning: sale visibility is missing
    - code: ACCESS_MODE_REQUIRED
      meaning: access mode is missing
    - code: MEMBERSHIP_PROGRAM_REF_REQUIRED
      meaning: membership program is required for membership modes
    - code: PUBLIC_RELEASE_AT_REQUIRED
      meaning: public release datetime is required for early access mode
    - code: OFFER_TYPE_REQUIRED
      meaning: offer type is missing
    - code: CURRENCY_AND_PRICE_REQUIRED_FOR_PAID
      meaning: currency and price are required for paid offer
    - code: PRICE_FORBIDDEN_FOR_FREE
      meaning: price is not allowed for free mode
    - code: SALE_END_AFTER_SALE_START_REQUIRED
      meaning: sale end must be after sale start

  membership:
    - code: PROGRAM_TITLE_REQUIRED
      meaning: membership program title is missing
    - code: BILLING_CYCLE_CODE_REQUIRED
      meaning: billing cycle code is missing
    - code: TIER_NAME_REQUIRED
      meaning: membership tier name is missing
    - code: TIER_LEVEL_ORDER_POSITIVE_REQUIRED
      meaning: tier order must be positive
    - code: MONTHLY_PRICE_AMOUNT_POSITIVE_REQUIRED
      meaning: monthly price must be positive
    - code: BENEFIT_TYPE_REQUIRED
      meaning: benefit type is missing
    - code: BENEFIT_TITLE_REQUIRED
      meaning: benefit title is missing
    - code: ACCESS_RULE_TYPE_REQUIRED
      meaning: content access rule type is missing
    - code: MINIMUM_TIER_REF_REQUIRED
      meaning: minimum tier ref is required in applicable cases
    - code: FALLBACK_PUBLIC_RELEASE_AT_REQUIRED
      meaning: public fallback release datetime is required in early access mode

  split_and_settlement:
    - code: REVENUE_BASIS_TYPE_REQUIRED
      meaning: revenue basis type is missing
    - code: PARTY_ROLE_CODE_REQUIRED
      meaning: split party role is missing
    - code: PERCENTAGE_OR_FIXED_FEE_REQUIRED
      meaning: either percentage or fixed fee is required
    - code: FIXED_FEE_CURRENCY_REQUIRED
      meaning: fixed fee currency is required when fixed fee exists
    - code: LOG_TYPE_REQUIRED
      meaning: negotiation log type is missing
    - code: SOURCE_TYPE_INVALID
      meaning: settlement source type is invalid

# ============================================================
# 2. PERMISSION ERROR CODE TABLE
# ============================================================

permission_error_codes:
- code: UNAUTHENTICATED
  meaning: caller is not authenticated
- code: PROJECT_VIEW_DENIED
  meaning: caller lacks project view permission
- code: PROJECT_EDIT_DENIED
  meaning: caller lacks project edit permission
- code: ASSET_UPLOAD_DENIED
  meaning: caller lacks upload permission
- code: APPROVAL_REQUEST_DENIED
  meaning: caller lacks approval request permission
- code: APPROVE_DENIED
  meaning: caller lacks approval decision permission
- code: PUBLISH_DENIED
  meaning: caller lacks publish permission
- code: LISTING_MANAGE_DENIED
  meaning: caller lacks marketplace listing permission
- code: PAID_OFFER_MANAGE_DENIED
  meaning: caller lacks paid offer permission
- code: MEMBERSHIP_MANAGE_DENIED
  meaning: caller lacks membership permission
- code: SPLIT_MANAGE_DENIED
  meaning: caller lacks split permission
- code: CONNECTOR_MANAGE_DENIED
  meaning: caller lacks connector permission
- code: CONNECTOR_AUDIT_VIEW_DENIED
  meaning: caller lacks connector audit visibility
- code: ADMIN_OVERRIDE_DENIED
  meaning: caller lacks admin override permission

# ============================================================
# 3. NOT FOUND ERROR CODE TABLE
# ============================================================

not_found_error_codes:
- code: PROJECT_NOT_FOUND
  meaning: target project does not exist or is not visible
- code: UPLOAD_JOB_NOT_FOUND
  meaning: upload job does not exist or is not visible
- code: VIDEO_DRAFT_NOT_FOUND
  meaning: video draft does not exist or is not visible
- code: REVIEW_COMMENT_NOT_FOUND
  meaning: review comment does not exist or is not visible
- code: REVISION_REQUEST_NOT_FOUND
  meaning: revision request does not exist or is not visible
- code: APPROVAL_REQUEST_NOT_FOUND
  meaning: approval request does not exist or is not visible
- code: PUBLISH_SETTING_NOT_FOUND
  meaning: publish setting does not exist or is not visible
- code: MARKETPLACE_LISTING_NOT_FOUND
  meaning: marketplace listing does not exist or is not visible
- code: PAID_VIDEO_OFFER_NOT_FOUND
  meaning: paid video offer does not exist or is not visible
- code: MEMBERSHIP_PROGRAM_NOT_FOUND
  meaning: membership program does not exist or is not visible
- code: MEMBERSHIP_TIER_NOT_FOUND
  meaning: membership tier does not exist or is not visible
- code: SPLIT_DRAFT_NOT_FOUND
  meaning: split draft does not exist or is not visible
- code: SETTLEMENT_REFERENCE_NOT_FOUND
  meaning: settlement reference does not exist or is not visible

# ============================================================
# 4. CONFLICT / STATE TRANSITION ERROR CODE TABLE
# ============================================================

conflict_error_codes:
- code: VERSION_CONFLICT
  meaning: optimistic lock version mismatch occurred
- code: IDEMPOTENCY_KEY_CONFLICT
  meaning: idempotency key reused with different request body
- code: INVALID_REVISION_STATE_TRANSITION
  meaning: requested revision transition is not allowed
- code: INVALID_APPROVAL_STATE_TRANSITION
  meaning: requested approval transition is not allowed
- code: INVALID_PUBLISH_STATE_TRANSITION
  meaning: requested publish transition is not allowed
- code: INVALID_LISTING_STATE_TRANSITION
  meaning: requested listing transition is not allowed
- code: INVALID_MEMBERSHIP_STATE_TRANSITION
  meaning: requested membership transition is not allowed
- code: INVALID_SPLIT_STATE_TRANSITION
  meaning: requested split transition is not allowed
- code: DUPLICATE_TIER_LEVEL_ORDER
  meaning: membership tier order duplicates an existing active or draft tier
- code: OVERLAPPING_ACTIVE_SPLIT_VERSION
  meaning: active split period overlaps another active split
- code: DUPLICATE_ACTIVE_ACCESS_RULE
  meaning: asset already has conflicting active access rule
- code: DUPLICATE_LISTING_FOR_ASSET
  meaning: active listing already exists for the same asset and mode

# ============================================================
# 5. BUSINESS RULE ERROR CODE TABLE
# ============================================================

business_rule_error_codes:

  upload:
    - code: UPLOAD_NOT_RETRYABLE
      meaning: upload is in a terminal non-retryable state
    - code: UPLOAD_SESSION_TERMINAL_FAILED
      meaning: upload session cannot be resumed
    - code: FILE_FORMAT_REJECTED
      meaning: file type is not allowed by policy
    - code: INGEST_PROCESSING_FAILED
      meaning: server ingest processing failed

  draft_asset:
    - code: DRAFT_LOCKED_BY_PUBLISH_FLOW
      meaning: draft is locked by an active publish flow
    - code: DRAFT_LOCKED_BY_APPROVAL_FLOW
      meaning: draft is locked by an active approval flow
    - code: THUMBNAIL_RIGHTS_BLOCKED
      meaning: thumbnail cannot be assigned due to rights issues
    - code: SUBTITLE_POLICY_BLOCKED
      meaning: subtitle asset violates policy

  review_and_approval:
    - code: APPROVAL_REQUIRED_BEFORE_PUBLISH
      meaning: publish action needs approval first
    - code: UNRESOLVED_BLOCKING_REVISION
      meaning: blocking revision remains unresolved
    - code: UNRESOLVED_RIGHTS_ISSUE
      meaning: rights issue remains unresolved
    - code: APPROVER_NOT_ELIGIBLE
      meaning: target approver is not eligible for this approval

  publish:
    - code: PUBLISH_NOT_READY
      meaning: publish readiness checks did not pass
    - code: PUBLISH_APPROVAL_REQUIRED
      meaning: approval is required before publish
    - code: PUBLISH_RIGHTS_BLOCKED
      meaning: rights block prevents publish
    - code: PUBLISH_SPLIT_REQUIRED
      meaning: monetized publish requires split configuration
    - code: CONNECTOR_BINDING_INVALID
      meaning: external connector binding is invalid
    - code: EXTERNAL_PUSH_NOT_RETRYABLE
      meaning: external push is terminal and cannot be retried
    - code: INVALID_SCHEDULE_WINDOW
      meaning: scheduled publish window is invalid

  marketplace_listing:
    - code: LISTING_NOT_READY
      meaning: listing readiness checks did not pass
    - code: LISTING_APPROVAL_REQUIRED
      meaning: approval is required before listing
    - code: LISTING_SPLIT_REQUIRED
      meaning: paid listing requires split configuration
    - code: LISTING_MEMBERSHIP_CONFLICT
      meaning: listing conflicts with membership rules
    - code: INVALID_PRICE_CONFIGURATION
      meaning: paid offer price config is invalid
    - code: INVALID_MEMBERSHIP_BINDING
      meaning: membership binding is invalid for selected access mode
    - code: ASSET_NOT_PUBLISH_READY
      meaning: asset must be publish-ready before listing
    - code: CATEGORY_POLICY_REJECTED
      meaning: selected marketplace category is blocked by policy

  membership:
    - code: MEMBERSHIP_PROGRAM_NOT_READY
      meaning: membership program configuration is incomplete
    - code: MEMBERSHIP_PROGRAM_APPROVAL_REQUIRED
      meaning: membership activation requires approval
    - code: MEMBERSHIP_TIER_CONFLICT
      meaning: membership tier configuration conflicts with current rules
    - code: MEMBERSHIP_CONTENT_RULE_CONFLICT
      meaning: content rule conflicts with pricing or access mode
    - code: EMPTY_MEMBERSHIP_PROGRAM_BLOCKED
      meaning: activation blocked because program has no valid tier or benefit
    - code: EARLY_ACCESS_RULE_INVALID
      meaning: early access timing rule is invalid

  split_and_settlement:
    - code: SPLIT_PERCENTAGE_INVALID
      meaning: split percentage total is invalid
    - code: SPLIT_APPROVAL_REQUIRED
      meaning: split activation requires approval
    - code: SPLIT_MISSING_REQUIRED_PARTY
      meaning: required split party is missing
    - code: SPLIT_CURRENCY_MISMATCH
      meaning: split currencies are inconsistent with policy
    - code: SETTLEMENT_REFERENCE_SYNC_FAILED
      meaning: settlement reference sync failed

# ============================================================
# 6. SYSTEM / AVAILABILITY ERROR CODE TABLE
# ============================================================

system_error_codes:
- code: INTERNAL_ERROR
  meaning: unexpected server error occurred
- code: TEMPORARY_UNAVAILABLE
  meaning: system is temporarily unavailable
- code: DOWNSTREAM_CONNECTOR_TIMEOUT
  meaning: connector timed out
- code: DOWNSTREAM_MARKETPLACE_UNAVAILABLE
  meaning: marketplace downstream service is unavailable
- code: DOWNSTREAM_BILLING_UNAVAILABLE
  meaning: billing downstream service is unavailable
- code: DOWNSTREAM_ENTITLEMENT_UNAVAILABLE
  meaning: entitlement downstream service is unavailable
- code: AUDIT_WRITE_FAILED
  meaning: audit record write failed
- code: DEAD_LETTER_RECORDED
  meaning: operation failed terminally and was recorded in dead letter state

# ============================================================
# 7. HTTP STATUS MAPPING
# ============================================================

http_status_mapping:
- http_status: 200
  use_for: successful reads and non-create success mutations
- http_status: 201
  use_for: successful creates
- http_status: 400
  use_for: validation errors
- http_status: 401
  use_for: unauthenticated caller
- http_status: 403
  use_for: permission denial
- http_status: 404
  use_for: not found
- http_status: 409
  use_for: version conflict or invalid state transition
- http_status: 422
  use_for: business rule failure
- http_status: 500
  use_for: internal system failure
- http_status: 503
  use_for: temporary availability failure

# ============================================================
# 8. FIELD ERROR SHAPE
# ============================================================

field_error_shape:
  field: string
  code: string
  message: string

example_validation_failure:
  ok: false
  error:
    type: validation
    code: INVALID_REQUEST
    message: request validation failed
    field_errors:
      - field: listing_title
        code: LISTING_TITLE_REQUIRED
        message: listing_title is required
      - field: marketplace_category_code
        code: MARKETPLACE_CATEGORY_CODE_REQUIRED
        message: marketplace_category_code is required
    retryable: false
  meta:
    request_id: string

example_business_rule_failure:
  ok: false
  error:
    type: business_rule
    code: LISTING_SPLIT_REQUIRED
    message: paid listing requires split configuration before listing
    field_errors: []
    retryable: false
  meta:
    request_id: string

# ============================================================
# 9. FIXED STATEMENT
# ============================================================

fixed_statement:
- validation codes must be stable and field-oriented
- business rule codes must be stable and workflow-oriented
- permission and state conflicts must remain distinguishable
- marketplace, membership, publish, and split failures must remain separable
- exact error codes are part of the implementation contract
