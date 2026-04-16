# ============================================================
# STREAM STUDIO EVENT NAMING LEDGER
# ============================================================

status: draft
layer: implementation-ledger
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the stable event naming direction for StreamStudio.

event_naming_principles:
- event names use uppercase snake case
- event names describe domain fact, not UI action label
- emitted event and audit action may be related but are not identical by requirement
- event families remain domain-separated
- irreversible domain facts must emit stable event names
- runtime technical events and business domain events remain separated

event_shape_minimum:
- event_name
- event_id
- producer_name
- target_ref
- target_scope
- occurred_at
- payload_summary_json

producer_names:
- stream_studio_ui
- stream_studio_api
- stream_studio_runtime
- stream_studio_reconciliation
- stream_studio_connector

# ============================================================
# 1. PROJECT / MEMBER EVENT NAMES
# ============================================================

project_member_events:
- PROJECT_CREATED
- PROJECT_UPDATED
- PROJECT_ARCHIVED
- PROJECT_MEMBER_ASSIGNED
- PROJECT_MEMBER_ROLE_CHANGED
- PROJECT_MEMBER_SCOPE_CHANGED
- PROJECT_MEMBER_REMOVED

# ============================================================
# 2. UPLOAD / ASSET EVENT NAMES
# ============================================================

upload_asset_events:
- UPLOAD_SESSION_CREATED
- UPLOAD_TRANSFER_STARTED
- UPLOAD_TRANSFER_COMPLETED
- UPLOAD_PROCESSING_STARTED
- UPLOAD_PROCESSING_COMPLETED
- UPLOAD_FAILED
- UPLOAD_RETRY_REGISTERED
- VIDEO_DRAFT_CREATED
- DRAFT_METADATA_UPDATED
- THUMBNAIL_ASSIGNED
- SUBTITLE_TRACK_ADDED
- SUBTITLE_TRACK_REPLACED
- EDIT_MARKER_UPSERTED

# ============================================================
# 3. REVIEW / APPROVAL EVENT NAMES
# ============================================================

review_approval_events:
- REVIEW_COMMENT_CREATED
- REVISION_REQUEST_CREATED
- REVISION_REQUEST_ACCEPTED
- REVISION_REQUEST_REJECTED
- REVISION_REQUEST_RESUBMITTED
- REVISION_REQUEST_VERIFIED
- APPROVAL_REQUEST_CREATED
- APPROVAL_REQUEST_EXPIRED
- APPROVAL_REQUEST_SUPERSEDED
- APPROVAL_DECISION_APPROVED
- APPROVAL_DECISION_REJECTED

# ============================================================
# 4. PUBLISH EVENT NAMES
# ============================================================

publish_events:
- PUBLISH_SETTING_SAVED
- PUBLISH_READINESS_VALIDATED
- PUBLISH_REQUEST_CREATED
- PUBLISH_SCHEDULED
- PUBLISH_EXECUTION_STARTED
- PUBLISH_CANONICAL_SUCCEEDED
- PUBLISH_CANONICAL_FAILED
- EXTERNAL_PUSH_REQUEST_CREATED
- EXTERNAL_PUSH_DISPATCH_STARTED
- EXTERNAL_PUSH_SUCCEEDED
- EXTERNAL_PUSH_FAILED
- EXTERNAL_PUSH_RETRY_REGISTERED

# ============================================================
# 5. MARKETPLACE / COMMERCE EVENT NAMES
# ============================================================

marketplace_events:
- MARKETPLACE_LISTING_CREATED
- MARKETPLACE_LISTING_UPDATED
- MARKETPLACE_ACCESS_POLICY_BOUND
- PAID_VIDEO_OFFER_BOUND
- MARKETPLACE_LISTING_VALIDATED
- MARKETPLACE_LISTING_REVIEW_SUBMITTED
- MARKETPLACE_LISTING_SCHEDULED
- MARKETPLACE_LISTING_ACTIVATED
- MARKETPLACE_LISTING_DELISTED
- MARKETPLACE_LISTING_CLONED
- PAID_OFFER_WINDOW_STARTED
- PAID_OFFER_WINDOW_ENDED

# ============================================================
# 6. MEMBERSHIP EVENT NAMES
# ============================================================

membership_events:
- MEMBERSHIP_PROGRAM_CREATED
- MEMBERSHIP_PROGRAM_UPDATED
- MEMBERSHIP_TIER_CREATED
- MEMBERSHIP_TIER_UPDATED
- MEMBERSHIP_BENEFIT_CREATED
- MEMBERSHIP_BENEFIT_UPDATED
- MEMBERSHIP_CONTENT_RULE_BOUND
- MEMBERSHIP_PROGRAM_REVIEW_SUBMITTED
- MEMBERSHIP_PROGRAM_ACTIVATED
- MEMBERSHIP_PROGRAM_PAUSED
- MEMBERSHIP_PROGRAM_RESUMED
- MEMBERSHIP_PROGRAM_ENDED
- MEMBER_EARLY_ACCESS_EXPIRED
- ENTITLEMENT_RECONCILIATION_DETECTED

# ============================================================
# 7. SPLIT / SETTLEMENT EVENT NAMES
# ============================================================

split_settlement_events:
- SPLIT_DRAFT_CREATED
- SPLIT_PARTY_UPSERTED
- SPLIT_NEGOTIATION_LOG_ADDED
- SPLIT_APPROVAL_SUBMITTED
- SPLIT_ACTIVATED
- SPLIT_SUPERSEDED
- SETTLEMENT_REFERENCE_SYNC_STARTED
- SETTLEMENT_REFERENCE_SYNC_SUCCEEDED
- SETTLEMENT_REFERENCE_SYNC_FAILED

# ============================================================
# 8. RUNTIME / GOVERNANCE EVENT NAMES
# ============================================================

runtime_governance_events:
- JOB_CREATED
- JOB_STARTED
- JOB_RETRY_WAIT_SET
- JOB_SUCCEEDED
- JOB_DEAD_LETTERED
- RECONCILIATION_MISMATCH_DETECTED
- RIGHTS_CHECK_BLOCKED
- POLICY_CHECK_BLOCKED
- PRICING_CHECK_BLOCKED
- MEMBERSHIP_RULE_BLOCKED
- SPLIT_RULE_BLOCKED
- ADMIN_OVERRIDE_APPLIED
- ADMIN_OVERRIDE_REJECTED
- AUDIT_BUNDLE_REBUILT
- NOTIFICATION_FANOUT_TRIGGERED

# ============================================================
# 9. EVENT FAMILY PREFIX POLICY
# ============================================================

family_prefix_policy:
- PROJECT_* for project and member facts
- UPLOAD_* for upload and ingest facts
- DRAFT_* for editable draft facts
- REVIEW_* and REVISION_* for review workflow facts
- APPROVAL_* for approval workflow facts
- PUBLISH_* and EXTERNAL_PUSH_* for release facts
- MARKETPLACE_* and PAID_* for commerce facts
- MEMBERSHIP_* and ENTITLEMENT_* for membership facts
- SPLIT_* and SETTLEMENT_* for split and settlement facts
- JOB_* and RECONCILIATION_* for runtime facts
- RIGHTS_* POLICY_* PRICING_* for explicit governance blocks
- ADMIN_* and AUDIT_* for governance and audit operations

# ============================================================
# 10. FIXED EVENT NAMING STATEMENT
# ============================================================

fixed_statement:
- event names above are frozen as implementation-level canonical names
- future additions must be additive and ledger-updated
- UI labels must not be used as event names
