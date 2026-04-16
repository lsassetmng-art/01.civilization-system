# ============================================================
# STREAM STUDIO FIELD DICTIONARY
# ============================================================

status: draft
layer: implementation-ledger
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the core field dictionary for StreamStudio records and API contracts.

field_policy:
- ids are opaque strings unless DB mapping later narrows them
- timestamps use iso8601
- monetary values require explicit currency pairing
- *_ref fields point to external or cross-domain references
- *_code fields are enum-backed
- *_status fields are state-machine-backed

# ============================================================
# 1. COMMON FIELD FAMILY
# ============================================================

common_fields:
  creator_project_id:
    type: string
    meaning: unique identifier of creator project
  creator_video_draft_id:
    type: string
    meaning: unique identifier of creator video draft
  creator_upload_job_id:
    type: string
    meaning: unique identifier of upload job
  creator_review_comment_id:
    type: string
    meaning: unique identifier of review comment
  creator_revision_request_id:
    type: string
    meaning: unique identifier of revision request
  creator_approval_request_id:
    type: string
    meaning: unique identifier of approval request
  creator_publish_setting_id:
    type: string
    meaning: unique identifier of publish setting
  creator_marketplace_listing_id:
    type: string
    meaning: unique identifier of marketplace listing
  creator_paid_video_offer_id:
    type: string
    meaning: unique identifier of paid offer
  creator_membership_program_id:
    type: string
    meaning: unique identifier of membership program
  creator_membership_tier_id:
    type: string
    meaning: unique identifier of membership tier
  creator_split_draft_id:
    type: string
    meaning: unique identifier of split draft

  created_at:
    type: iso8601
    meaning: server-side creation timestamp
  updated_at:
    type: iso8601
    meaning: server-side last update timestamp
  expected_version:
    type: integer
    meaning: optimistic-lock client version
  request_id:
    type: string
    meaning: request trace identifier
  idempotency_key:
    type: string
    meaning: client-supplied deduplication key for critical mutations

# ============================================================
# 2. PROJECT / MEMBER FIELDS
# ============================================================

project_fields:
  project_code:
    type: string
    meaning: stable human-readable project identifier
  project_title:
    type: string
    meaning: creator-side project title
  project_summary:
    type: string_or_null
    meaning: creator-side short summary
  project_status:
    type: enum(project_status)
    meaning: lifecycle state of project
  owner_creator_ref:
    type: string
    meaning: owner reference of project
  member_ref:
    type: string
    meaning: collaborator or actor reference
  permission_profile_ref:
    type: string_or_null
    meaning: permission template reference
  assignment_scope_summary:
    type: object
    meaning: scope binding summary for project member
  due_at:
    type: iso8601_or_null
    meaning: due date for assigned responsibility

# ============================================================
# 3. UPLOAD / ASSET FIELDS
# ============================================================

upload_asset_fields:
  asset_ref:
    type: string
    meaning: reference to source or derived asset
  source_file_name:
    type: string
    meaning: original file name from client
  file_size_bytes:
    type: integer
    meaning: file size in bytes
  mime_type:
    type: string
    meaning: declared media type
  target_asset_type:
    type: string
    meaning: intended asset class for upload
  resumable_session_ref:
    type: string
    meaning: resumable upload session reference
  ingest_status:
    type: enum(ingest_status)
    meaning: current upload / ingest state
  progress_percent:
    type: integer
    meaning: upload or ingest progress percentage
  checksum_sha256:
    type: string_or_null
    meaning: sha256 checksum reference

draft_asset_fields:
  draft_status:
    type: enum(draft_status)
    meaning: lifecycle state of video draft
  title:
    type: string_or_null
    meaning: creator-facing content title
  description:
    type: string_or_null
    meaning: creator-facing content description
  default_language:
    type: string
    meaning: primary language code
  tag_summary_json:
    type: object_or_null
    meaning: tag collection payload
  thumbnail_asset_ref:
    type: string_or_null
    meaning: bound thumbnail asset reference
  subtitle_package_ref:
    type: string_or_null
    meaning: grouped subtitle package reference
  draft_version:
    type: integer
    meaning: mutable version number of draft
  language_code:
    type: string
    meaning: subtitle or language target code
  source_type:
    type: string
    meaning: uploaded or generated subtitle source
  marker_type:
    type: string
    meaning: trim or cut marker type
  start_ms:
    type: integer
    meaning: start offset in milliseconds
  end_ms:
    type: integer
    meaning: end offset in milliseconds

# ============================================================
# 4. REVIEW / APPROVAL FIELDS
# ============================================================

review_fields:
  review_ref:
    type: string
    meaning: review target reference
  revision_ref:
    type: string
    meaning: revision target reference
  comment_type:
    type: enum(comment_type)
    meaning: review comment class
  anchor_mode:
    type: enum(anchor_mode)
    meaning: comment anchor type
  anchor_start_ms:
    type: integer_or_null
    meaning: timeline anchor start
  anchor_end_ms:
    type: integer_or_null
    meaning: timeline anchor end
  anchor_field_key:
    type: string_or_null
    meaning: metadata field anchor key
  message_body:
    type: string
    meaning: user-authored message payload
  blocking_flag:
    type: boolean
    meaning: whether unresolved item blocks next stage
  request_status:
    type: enum(revision_request_status)
    meaning: revision request lifecycle

approval_fields:
  approval_ref:
    type: string
    meaning: approval target reference
  approval_type:
    type: enum(approval_type)
    meaning: approval domain class
  approval_status:
    type: enum(approval_status)
    meaning: approval request lifecycle
  approver_refs:
    type: string_array
    meaning: list of required approvers
  decision_code:
    type: enum(decision_code)
    meaning: approval decision result
  decision_note:
    type: string_or_null
    meaning: approval explanation

# ============================================================
# 5. PUBLISH / LISTING FIELDS
# ============================================================

publish_fields:
  publish_ref:
    type: string
    meaning: publish target reference
  visibility_code:
    type: enum(visibility_code)
    meaning: internal publication visibility
  scheduled_publish_at:
    type: iso8601_or_null
    meaning: scheduled publish timestamp
  publish_destinations:
    type: object
    meaning: internal and external destination toggles
  comment_policy_code:
    type: string_or_null
    meaning: comment rule code
  readiness_status:
    type: enum(readiness_status)
    meaning: readiness evaluation result
  rights_check_status:
    type: enum(rights_check_status)
    meaning: rights check result
  canonical_publish_status:
    type: enum(canonical_publish_status)_or_null
    meaning: canonical publish outcome
  external_push_status:
    type: enum(external_push_status)_or_null
    meaning: external push outcome

listing_fields:
  listing_title:
    type: string
    meaning: marketplace-facing title
  listing_summary:
    type: string_or_null
    meaning: marketplace-facing summary
  cover_asset_ref:
    type: string_or_null
    meaning: marketplace-facing cover asset reference
  marketplace_category_code:
    type: string
    meaning: marketplace category
  sale_visibility_code:
    type: enum(sale_visibility_code)
    meaning: marketplace visibility scope
  listing_status:
    type: enum(listing_status)
    meaning: marketplace listing lifecycle
  access_mode:
    type: enum(access_mode)
    meaning: purchase or entitlement access mode
  offer_type:
    type: enum(offer_type)
    meaning: pricing mode of offer
  currency_code:
    type: string_or_null
    meaning: explicit currency code
  one_time_price_amount:
    type: number_or_null
    meaning: one-time purchase amount
  sale_start_at:
    type: iso8601_or_null
    meaning: sale start timestamp
  sale_end_at:
    type: iso8601_or_null
    meaning: sale end timestamp
  public_release_at:
    type: iso8601_or_null
    meaning: fallback public release time
  early_access_until:
    type: iso8601_or_null
    meaning: early access cutoff time

# ============================================================
# 6. MEMBERSHIP FIELDS
# ============================================================

membership_fields:
  program_code:
    type: string
    meaning: stable membership program identifier
  program_title:
    type: string
    meaning: membership program title
  program_summary:
    type: string_or_null
    meaning: membership program summary
  program_status:
    type: enum(program_status)
    meaning: membership program lifecycle
  billing_cycle_code:
    type: enum(billing_cycle_code)
    meaning: recurrence cycle
  tier_code:
    type: string
    meaning: stable tier identifier
  tier_name:
    type: string
    meaning: tier display name
  tier_level_order:
    type: integer
    meaning: ordering rank of tier
  monthly_price_amount:
    type: number
    meaning: monthly price for tier
  tier_status:
    type: enum(tier_status)
    meaning: tier lifecycle
  benefit_type:
    type: enum(benefit_type)
    meaning: type of benefit
  benefit_title:
    type: string
    meaning: short benefit title
  benefit_summary:
    type: string_or_null
    meaning: benefit description
  benefit_status:
    type: enum(benefit_status)
    meaning: benefit lifecycle
  minimum_tier_ref:
    type: string_or_null
    meaning: minimum tier required for rule
  access_rule_type:
    type: enum(access_rule_type)
    meaning: membership content access rule
  membership_state:
    type: enum(membership_state)
    meaning: current member reference state
  current_period_start:
    type: iso8601_or_null
    meaning: membership period start
  current_period_end:
    type: iso8601_or_null
    meaning: membership period end

# ============================================================
# 7. SPLIT / SETTLEMENT FIELDS
# ============================================================

split_fields:
  split_code:
    type: string
    meaning: stable split identifier
  split_status:
    type: enum(split_status)
    meaning: split lifecycle
  revenue_basis_type:
    type: enum(revenue_basis_type)
    meaning: percentage or fixed fee basis
  party_ref:
    type: string
    meaning: allocated party reference
  party_role_code:
    type: string
    meaning: creator-side role of party
  percentage_rate:
    type: number_or_null
    meaning: percentage allocation
  fixed_fee_amount:
    type: number_or_null
    meaning: fixed fee allocation
  fixed_fee_currency:
    type: string_or_null
    meaning: currency for fixed fee
  priority_order:
    type: integer_or_null
    meaning: settlement or display order
  log_type:
    type: enum(log_type)
    meaning: negotiation log class

settlement_fields:
  settlement_reference_id:
    type: string
    meaning: settlement record identifier
  source_type:
    type: enum(source_type)
    meaning: settlement source family
  source_ref:
    type: string
    meaning: referenced source identifier
  settlement_status:
    type: enum(settlement_status)
    meaning: settlement lifecycle
  gross_amount:
    type: number
    meaning: gross monetary amount
  fee_amount:
    type: number_or_null
    meaning: fee amount
  net_amount:
    type: number
    meaning: net monetary amount
  period_start:
    type: iso8601
    meaning: settlement period start
  period_end:
    type: iso8601
    meaning: settlement period end

# ============================================================
# 8. JOB / AUDIT FIELDS
# ============================================================

job_fields:
  job_id:
    type: string
    meaning: runtime job identifier
  job_type:
    type: string
    meaning: async job category
  target_ref:
    type: string
    meaning: target entity reference
  target_scope:
    type: string
    meaning: scope family of target
  state:
    type: enum(job_state)
    meaning: runtime job state
  attempt_count:
    type: integer
    meaning: number of attempts made
  max_attempts:
    type: integer
    meaning: maximum retry attempts
  next_retry_at:
    type: iso8601_or_null
    meaning: scheduled retry time
  last_error_code:
    type: string_or_null
    meaning: latest exact error code
  last_error_summary:
    type: string_or_null
    meaning: latest summarized error text

audit_fields:
  actor_ref:
    type: string
    meaning: acting subject reference
  action_code:
    type: string
    meaning: stable audit event code
  result_code:
    type: string
    meaning: success or failure result token
  reason_note:
    type: string_or_null
    meaning: optional explanation note
  scope_ref:
    type: string
    meaning: scope binding reference
  target_ref:
    type: string
    meaning: acted target reference

# ============================================================
# 9. FIXED FIELD STATEMENT
# ============================================================

fixed_statement:
- field names above are frozen for implementation-level exactness
- later DB naming may differ only through mapped translation, not meaning drift
- new fields should be additive and dictionary-updated
