# ============================================================
# STREAM STUDIO AUDIT EVENT CODE LEDGER
# ============================================================

status: draft
layer: implementation-ledger
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the stable audit event code ledger for StreamStudio.

audit_policy:
- every high-risk action must emit a stable audit event code
- audit event codes are immutable identifiers
- result status is stored separately from action code
- approval, publish, listing, membership, split, connector, and override actions must remain separable

result_code_set:
- succeeded
- failed
- blocked
- cancelled
- expired

# ============================================================
# 1. PROJECT / MEMBER EVENTS
# ============================================================

project_member_events:
- code: PROJECT_CREATED
  meaning: creator project was created
- code: PROJECT_UPDATED
  meaning: mutable project summary was updated
- code: PROJECT_ARCHIVED
  meaning: project was archived
- code: PROJECT_MEMBER_ASSIGNED
  meaning: project member was added
- code: PROJECT_MEMBER_ROLE_CHANGED
  meaning: member role was changed
- code: PROJECT_MEMBER_SCOPE_CHANGED
  meaning: member scope binding was changed
- code: PROJECT_MEMBER_REMOVED
  meaning: member was removed

# ============================================================
# 2. UPLOAD / ASSET EVENTS
# ============================================================

upload_asset_events:
- code: UPLOAD_SESSION_CREATED
  meaning: upload session was created
- code: UPLOAD_COMPLETED
  meaning: upload stream completed and processing began
- code: UPLOAD_RETRIED
  meaning: upload was retried
- code: VIDEO_DRAFT_CREATED
  meaning: video draft was created
- code: DRAFT_METADATA_UPDATED
  meaning: video metadata was updated
- code: THUMBNAIL_ASSIGNED
  meaning: thumbnail was assigned
- code: SUBTITLE_TRACK_ADDED
  meaning: subtitle track was added
- code: EDIT_MARKER_UPSERTED
  meaning: trim or cut marker was upserted

# ============================================================
# 3. REVIEW / APPROVAL EVENTS
# ============================================================

review_approval_events:
- code: REVIEW_COMMENT_CREATED
  meaning: review comment was added
- code: REVISION_REQUEST_CREATED
  meaning: revision request was created
- code: REVISION_REQUEST_RESPONDED
  meaning: revision request status changed
- code: APPROVAL_REQUEST_CREATED
  meaning: approval request was created
- code: APPROVAL_DECISION_RECORDED
  meaning: approval decision was recorded
- code: APPROVAL_REQUEST_EXPIRED
  meaning: approval request expired
- code: APPROVAL_REQUEST_SUPERSEDED
  meaning: approval request was superseded

# ============================================================
# 4. PUBLISH EVENTS
# ============================================================

publish_events:
- code: PUBLISH_SETTING_UPSERTED
  meaning: publish setting was saved
- code: PUBLISH_READINESS_VALIDATED
  meaning: readiness validation was executed
- code: PUBLISH_REQUEST_CREATED
  meaning: publish request was created
- code: PUBLISH_SCHEDULED
  meaning: publish was scheduled
- code: PUBLISH_STARTED
  meaning: canonical publish execution started
- code: PUBLISH_SUCCEEDED
  meaning: canonical publish succeeded
- code: PUBLISH_FAILED
  meaning: canonical publish failed
- code: EXTERNAL_PUSH_REQUESTED
  meaning: external push dispatch was requested
- code: EXTERNAL_PUSH_RETRIED
  meaning: external push retry was requested
- code: EXTERNAL_PUSH_SUCCEEDED
  meaning: external push succeeded
- code: EXTERNAL_PUSH_FAILED
  meaning: external push failed

# ============================================================
# 5. MARKETPLACE / COMMERCE EVENTS
# ============================================================

marketplace_events:
- code: MARKETPLACE_LISTING_CREATED
  meaning: marketplace listing draft was created
- code: MARKETPLACE_LISTING_UPDATED
  meaning: marketplace listing metadata was updated
- code: MARKETPLACE_ACCESS_POLICY_BOUND
  meaning: listing access mode was bound
- code: PAID_VIDEO_OFFER_BOUND
  meaning: pricing offer was bound
- code: MARKETPLACE_LISTING_VALIDATED
  meaning: listing validation was executed
- code: MARKETPLACE_LISTING_REVIEW_SUBMITTED
  meaning: listing approval flow was requested
- code: MARKETPLACE_LISTING_SCHEDULED
  meaning: listing activation was scheduled
- code: MARKETPLACE_LISTING_ACTIVATED
  meaning: listing became active
- code: MARKETPLACE_LISTING_DELISTED
  meaning: listing was delisted
- code: MARKETPLACE_LISTING_CLONED
  meaning: listing was cloned into new draft

# ============================================================
# 6. MEMBERSHIP EVENTS
# ============================================================

membership_events:
- code: MEMBERSHIP_PROGRAM_CREATED
  meaning: membership program was created
- code: MEMBERSHIP_PROGRAM_UPDATED
  meaning: membership program was updated
- code: MEMBERSHIP_TIER_CREATED
  meaning: membership tier was created
- code: MEMBERSHIP_TIER_UPDATED
  meaning: membership tier was updated
- code: MEMBERSHIP_BENEFIT_CREATED
  meaning: membership benefit was created
- code: MEMBERSHIP_BENEFIT_UPDATED
  meaning: membership benefit was updated
- code: MEMBERSHIP_CONTENT_RULE_BOUND
  meaning: asset content rule was bound to membership
- code: MEMBERSHIP_PROGRAM_REVIEW_SUBMITTED
  meaning: membership activation review was requested
- code: MEMBERSHIP_PROGRAM_ACTIVATED
  meaning: membership program was activated
- code: MEMBERSHIP_PROGRAM_PAUSED
  meaning: membership program was paused
- code: MEMBERSHIP_PROGRAM_RESUMED
  meaning: membership program was resumed
- code: MEMBERSHIP_PROGRAM_ENDED
  meaning: membership program was ended
- code: MEMBER_EARLY_ACCESS_EXPIRED
  meaning: early access period expired and rule transitioned

# ============================================================
# 7. SPLIT / SETTLEMENT EVENTS
# ============================================================

split_settlement_events:
- code: SPLIT_DRAFT_CREATED
  meaning: split draft was created
- code: SPLIT_PARTY_UPSERTED
  meaning: split line was added or updated
- code: SPLIT_NEGOTIATION_LOG_ADDED
  meaning: split negotiation message was added
- code: SPLIT_APPROVAL_SUBMITTED
  meaning: split approval request was submitted
- code: SPLIT_ACTIVATED
  meaning: split version became active
- code: SPLIT_SUPERSEDED
  meaning: prior split version was superseded
- code: SETTLEMENT_REFERENCE_SYNCED
  meaning: settlement reference sync succeeded
- code: SETTLEMENT_REFERENCE_SYNC_FAILED
  meaning: settlement reference sync failed

# ============================================================
# 8. RUNTIME / OPERATIONS EVENTS
# ============================================================

runtime_operations_events:
- code: JOB_CREATED
  meaning: runtime job was created
- code: JOB_STARTED
  meaning: runtime job execution started
- code: JOB_RETRY_WAIT_SET
  meaning: runtime job was scheduled for retry
- code: JOB_SUCCEEDED
  meaning: runtime job succeeded
- code: JOB_DEAD_LETTERED
  meaning: runtime job entered dead-letter state
- code: RECONCILIATION_MISMATCH_DETECTED
  meaning: reconciliation mismatch was detected
- code: AUDIT_BUNDLE_REBUILT
  meaning: audit reconstruction bundle was rebuilt
- code: NOTIFICATION_FANOUT_TRIGGERED
  meaning: fanout was triggered

# ============================================================
# 9. GOVERNANCE / OVERRIDE EVENTS
# ============================================================

governance_events:
- code: RIGHTS_CHECK_BLOCKED
  meaning: action blocked by rights
- code: POLICY_CHECK_BLOCKED
  meaning: action blocked by policy
- code: PRICING_CHECK_BLOCKED
  meaning: action blocked by pricing rule
- code: MEMBERSHIP_RULE_BLOCKED
  meaning: action blocked by membership rule
- code: SPLIT_RULE_BLOCKED
  meaning: action blocked by split rule
- code: ADMIN_OVERRIDE_APPLIED
  meaning: admin override was applied
- code: ADMIN_OVERRIDE_REJECTED
  meaning: admin override attempt was rejected

# ============================================================
# 10. MINIMUM AUDIT PAYLOAD
# ============================================================

minimum_audit_payload:
  actor_ref: string
  role_code: string
  action_code: string
  result_code: string
  scope_ref: string
  target_ref: string
  reason_note_or_null: string_or_null
  request_id_or_null: string_or_null
  created_at: iso8601

# ============================================================
# 11. FIXED AUDIT STATEMENT
# ============================================================

fixed_statement:
- audit event codes above are frozen as implementation-level stable identifiers
- result_code must remain separate from action_code
- future additions must be additive and ledger-updated
