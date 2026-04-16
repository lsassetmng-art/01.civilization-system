# ============================================================
# STREAM STUDIO ENUM LEDGER
# ============================================================

status: draft
layer: implementation-ledger
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the major fixed enum sets for StreamStudio implementation.

naming_policy:
- enum values use lowercase snake case
- stable values are preferred over display-oriented labels
- UI copy must be mapped separately from enum values

# ============================================================
# 1. ROLE CODE
# ============================================================

role_code:
- creator
- collaborator
- producer
- admin
- membership_operator

# ============================================================
# 2. PROJECT STATUS
# ============================================================

project_status:
- draft
- in_review
- approval_pending
- publish_ready
- scheduled
- published
- failed
- archived

# ============================================================
# 3. UPLOAD STATUS
# ============================================================

ingest_status:
- queued
- uploading
- processing
- completed
- failed
- cancelled

# ============================================================
# 4. VIDEO DRAFT STATUS
# ============================================================

draft_status:
- draft
- metadata_ready
- review_required
- in_review
- approval_pending
- publish_ready
- scheduled
- published
- failed
- archived

# ============================================================
# 5. COMMENT TYPE
# ============================================================

comment_type:
- general_comment
- timeline_comment
- metadata_field_comment
- subtitle_track_comment
- approval_note
- negotiation_reference_note

anchor_mode:
- whole_asset
- time_range
- metadata_field
- subtitle_track

# ============================================================
# 6. REVISION REQUEST STATUS
# ============================================================

revision_request_status:
- open
- accepted
- in_progress
- resubmitted
- verified
- rejected
- cancelled

# ============================================================
# 7. APPROVAL TYPE / STATUS / DECISION
# ============================================================

approval_type:
- publish
- listing
- split
- membership_program

approval_status:
- requested
- in_review
- approved
- rejected
- expired
- superseded

decision_code:
- approve
- reject

# ============================================================
# 8. VISIBILITY / PUBLISH
# ============================================================

visibility_code:
- private
- limited
- public
- scheduled_public

request_channel:
- manual
- scheduler

readiness_status:
- pending
- ready
- blocked

rights_check_status:
- pending
- passed
- failed

canonical_publish_status:
- requested
- scheduled
- processing
- published
- failed
- cancelled

external_push_status:
- pending
- validating
- dispatching
- succeeded
- failed_retryable
- failed_terminal
- reversed
- archived

# ============================================================
# 9. MARKETPLACE / COMMERCE
# ============================================================

listing_status:
- draft
- validation_pending
- approval_pending
- ready
- listed
- delisted
- blocked
- archived

sale_visibility_code:
- public
- limited

access_mode:
- free
- one_time_paid
- membership_only
- member_early_access_then_public
- reserved_bundle
- reserved_rental

offer_type:
- free
- one_time_paid

offer_status:
- draft
- ready
- active
- ended
- superseded
- archived

# ============================================================
# 10. MEMBERSHIP
# ============================================================

program_status:
- draft
- review_pending
- active
- paused
- ended
- archived

billing_cycle_code:
- monthly

tier_status:
- draft
- active
- disabled
- archived

benefit_type:
- content_access
- badge
- community
- other

benefit_status:
- active
- disabled

access_rule_type:
- membership_only
- member_early_access_then_public

membership_state:
- active
- paused
- ended

# ============================================================
# 11. SPLIT / SETTLEMENT
# ============================================================

revenue_basis_type:
- percentage_only
- fixed_fee_only
- hybrid

split_status:
- draft
- awaiting_confirmation
- under_negotiation
- approval_pending
- active
- superseded
- archived

log_type:
- proposal
- comment
- agreement

settlement_status:
- pending
- partial
- completed
- failed

source_type:
- publish
- listing
- membership

# ============================================================
# 12. PERMISSION / SCOPE
# ============================================================

scope_code:
- workspace_scope
- project_scope
- asset_scope
- publish_scope
- listing_scope
- membership_scope
- split_scope
- connector_scope

priority_code:
- low
- normal
- high
- critical

job_state:
- queued
- running
- succeeded
- retry_wait
- dead_letter
- cancelled

backoff_code:
- fixed
- exponential
- exponential_with_jitter
- progressive_poll

# ============================================================
# 13. FIXED ENUM STATEMENT
# ============================================================

fixed_statement:
- enum values above are frozen for implementation-level design
- UI display text must not be used as canonical enum value
- new enum introduction should be additive and ledger-updated
