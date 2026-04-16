# ============================================================
# STREAM STUDIO DB-SIDE MAPPING DECISION MEMO
# ============================================================

status: decision-memo
layer: implementation-mapping
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the DB-side mapping decisions and non-decisions
for StreamStudio implementation handoff.

# ============================================================
# 1. DECISION POSITION
# ============================================================

This memo does not finalize physical SQL yet.
It freezes the DB-side mapping direction so that
API, UI, runtime, and audit implementation can move
without semantic drift.

mapping_principle:
- logical design names are frozen first
- physical DB names may differ only by mapped translation
- meaning drift is forbidden
- additive expansion is preferred over destructive redesign
- publish, listing, membership, split, and audit concerns remain separable

# ============================================================
# 2. TABLE GROUPING DECISION
# ============================================================

recommended_table_groups:

  project_and_member_group:
    - creator_project
    - creator_project_member

  upload_and_draft_group:
    - creator_upload_job
    - creator_video_draft
    - creator_edit_marker
    - creator_subtitle_track

  review_and_approval_group:
    - creator_review_comment
    - creator_revision_request
    - creator_thread
    - creator_thread_message
    - creator_approval_request
    - creator_approval_decision

  publish_group:
    - creator_publish_setting
    - creator_publish_request
    - creator_external_push_job

  commerce_and_listing_group:
    - creator_marketplace_listing
    - creator_paid_video_offer
    - creator_access_policy_binding

  membership_group:
    - creator_membership_program
    - creator_membership_tier
    - creator_membership_benefit
    - creator_membership_content_rule
    - creator_membership_member_reference

  split_and_settlement_group:
    - creator_split_draft
    - creator_split_party
    - creator_split_negotiation_log
    - creator_settlement_reference
    - creator_commerce_settlement_reference

  runtime_and_audit_group:
    - creator_runtime_job
    - creator_dead_letter_entry
    - creator_audit_event

decision_statement:
DB grouping shall follow domain boundaries first,
not screen boundaries.

# ============================================================
# 3. PRIMARY KEY DECISION
# ============================================================

primary_key_policy:
- every table gets one opaque primary key
- logical ids remain string-compatible at contract level
- DB implementation may use uuid as physical representation
- primary key naming stays singular and table-scoped

recommended_pattern:
- creator_project_id
- creator_video_draft_id
- creator_upload_job_id
- creator_marketplace_listing_id
- creator_membership_program_id
- creator_split_draft_id

non_decision:
- exact DB engine-level uuid generation function is not fixed here

# ============================================================
# 4. FOREIGN KEY DECISION
# ============================================================

foreign_key_policy:
- direct ownership links should use explicit foreign keys
- optional cross-system references may remain soft refs when canonical owner is external
- audit tables may use soft target_ref for heterogeneous targets
- runtime job targets use target_ref plus target_scope, not many nullable foreign keys

recommended_direct_fk_examples:
- creator_project_member.creator_project_id -> creator_project.creator_project_id
- creator_video_draft.creator_project_id -> creator_project.creator_project_id
- creator_edit_marker.creator_video_draft_id -> creator_video_draft.creator_video_draft_id
- creator_subtitle_track.creator_video_draft_id -> creator_video_draft.creator_video_draft_id
- creator_approval_decision.creator_approval_request_id -> creator_approval_request.creator_approval_request_id
- creator_paid_video_offer.creator_marketplace_listing_id -> creator_marketplace_listing.creator_marketplace_listing_id
- creator_membership_tier.creator_membership_program_id -> creator_membership_program.creator_membership_program_id
- creator_membership_benefit.creator_membership_tier_id -> creator_membership_tier.creator_membership_tier_id
- creator_split_party.creator_split_draft_id -> creator_split_draft.creator_split_draft_id
- creator_split_negotiation_log.creator_split_draft_id -> creator_split_draft.creator_split_draft_id

recommended_soft_ref_examples:
- asset_ref
- publish_ref
- listing_ref
- membership_program_ref in cross-domain API payloads
- source_ref in settlement references
- target_ref in audit and runtime records

# ============================================================
# 5. ENUM STORAGE DECISION
# ============================================================

enum_storage_policy:
- store canonical enum values as text-compatible columns
- do not store localized labels in DB enum columns
- enforce allowed values at application and later DB constraint layer
- additive enum extension must not require label migration

recommended_column_style:
- role_code text not null
- project_status text not null
- visibility_code text not null
- listing_status text not null
- program_status text not null
- split_status text not null

decision_statement:
Enum ledger values are canonical.
Display labels are not DB values.

# ============================================================
# 6. MONEY STORAGE DECISION
# ============================================================

money_storage_policy:
- monetary amount and currency are always stored separately
- amount precision must be decimal-safe
- converted display amounts are not canonical settlement truth
- fixed fee and one-time price use explicit currency columns
- net, gross, and fee fields remain separated

recommended_pattern:
- one_time_price_amount
- currency_code
- fixed_fee_amount
- fixed_fee_currency
- gross_amount
- fee_amount
- net_amount

non_decision:
- exact numeric precision and scale are not fixed here
- they must be chosen once business maximums are frozen

# ============================================================
# 7. TIMESTAMP DECISION
# ============================================================

timestamp_policy:
- created_at and updated_at are mandatory on mutable tables
- state-transition-heavy tables may additionally carry event timestamps
- scheduled actions keep explicit future execution timestamps
- client-provided datetime never replaces server canonical timestamps

recommended_event_timestamps:
- requested_at
- decided_at
- resolved_at
- release_at
- sale_start_at
- sale_end_at
- current_period_start
- current_period_end
- scheduled_at
- started_at
- finished_at
- next_retry_at

# ============================================================
# 8. VERSIONING DECISION
# ============================================================

versioning_policy:
- user-edited mutable records should support optimistic locking
- draft and listing records get explicit version counters
- audit tables do not use optimistic lock versioning
- append-only logs do not use optimistic lock versioning

recommended_versioned_tables:
- creator_project
- creator_video_draft
- creator_marketplace_listing
- creator_membership_program
- creator_split_draft

recommended_version_column:
- version integer not null

# ============================================================
# 9. APPEND-ONLY VS MUTABLE DECISION
# ============================================================

append_only_tables:
- creator_thread_message
- creator_review_comment
- creator_split_negotiation_log
- creator_approval_decision
- creator_audit_event

mutable_state_tables:
- creator_project
- creator_upload_job
- creator_video_draft
- creator_revision_request
- creator_approval_request
- creator_publish_setting
- creator_publish_request
- creator_external_push_job
- creator_marketplace_listing
- creator_paid_video_offer
- creator_access_policy_binding
- creator_membership_program
- creator_membership_tier
- creator_membership_benefit
- creator_membership_content_rule
- creator_membership_member_reference
- creator_split_draft
- creator_split_party
- creator_settlement_reference
- creator_commerce_settlement_reference
- creator_runtime_job
- creator_dead_letter_entry

decision_statement:
Logs and decisions should be append-only where possible.
Current-state objects remain mutable with audit reconstruction support.

# ============================================================
# 10. SOFT DELETE VS HARD DELETE DECISION
# ============================================================

delete_policy:
- business-critical records should prefer archival or status transition over hard delete
- user-visible draft clutter may support UI hide/archive semantics
- audit records are never hard-deleted by normal app flow
- dead-letter records are never hard-deleted by normal app flow

recommended_archive_status_usage:
- project_archived
- draft_archived
- listing_archived
- program_archived
- split_archived

non_decision:
- retention windows are not fixed here

# ============================================================
# 11. INDEXING DIRECTION DECISION
# ============================================================

recommended_index_families:

  project_and_dashboard:
    - creator_project(owner_creator_ref, project_status, updated_at desc)
    - creator_project_member(member_ref, updated_at desc)

  upload_and_draft:
    - creator_upload_job(creator_project_id, ingest_status, updated_at desc)
    - creator_video_draft(creator_project_id, draft_status, updated_at desc)

  review_and_approval:
    - creator_revision_request(assignee_ref, request_status, due_at)
    - creator_approval_request(approval_status, due_at)
    - creator_review_comment(review_ref, created_at desc)

  publish_and_connector:
    - creator_publish_request(publish_ref, request_status, created_at desc)
    - creator_external_push_job(push_ref, push_status, updated_at desc)

  listing_and_membership:
    - creator_marketplace_listing(asset_ref, listing_status, updated_at desc)
    - creator_paid_video_offer(creator_marketplace_listing_id, offer_status, updated_at desc)
    - creator_membership_program(program_status, updated_at desc)
    - creator_membership_content_rule(asset_ref, access_rule_type)

  split_and_settlement:
    - creator_split_draft(target_asset_ref, split_status, updated_at desc)
    - creator_settlement_reference(source_type, source_ref, period_start, period_end)

  runtime_and_audit:
    - creator_runtime_job(job_type, state, next_retry_at)
    - creator_dead_letter_entry(job_type, created_at desc)
    - creator_audit_event(target_ref, created_at desc)
    - creator_audit_event(actor_ref, created_at desc)
    - creator_audit_event(action_code, created_at desc)

non_decision:
- exact index names are not fixed here

# ============================================================
# 12. UNIQUE CONSTRAINT DIRECTION
# ============================================================

recommended_unique_constraints:
- creator_project.project_code unique within workspace scope
- creator_membership_tier(creator_membership_program_id, tier_level_order) unique
- creator_access_policy_binding active uniqueness per asset and active mode family
- creator_marketplace_listing active uniqueness per asset and listing mode where policy requires
- creator_split_draft active uniqueness rules enforced with business logic plus partial uniqueness if supported

note:
Some uniqueness requires partial or conditional enforcement.
Those may be implemented with DB-specific partial indexes later.

# ============================================================
# 13. AUDIT TABLE DECISION
# ============================================================

creator_audit_event_minimum_columns:
- creator_audit_event_id
- actor_ref
- role_code
- action_code
- result_code
- scope_ref
- target_ref
- request_id
- reason_note
- payload_summary_json
- created_at

audit_policy:
- audit events are append-only
- payload_summary_json stores bounded structured context
- full raw request bodies should not be blindly copied into audit rows
- audit rows must be searchable by actor_ref, target_ref, and action_code

# ============================================================
# 14. RUNTIME JOB TABLE DECISION
# ============================================================

creator_runtime_job_minimum_columns:
- creator_runtime_job_id
- job_type
- target_ref
- target_scope
- state
- attempt_count
- max_attempts
- idempotency_key
- priority_code
- scheduled_at
- started_at
- finished_at
- next_retry_at
- last_error_code
- last_error_summary
- created_at
- updated_at

creator_dead_letter_entry_minimum_columns:
- creator_dead_letter_entry_id
- original_job_id
- job_type
- target_ref
- target_scope
- terminal_reason_code
- terminal_reason_summary
- final_attempt_count
- last_error_code
- recommended_operator_action
- created_at
- updated_at

decision_statement:
Runtime jobs and dead-letter entries must be first-class tables,
not hidden queue-only metadata.

# ============================================================
# 15. JSON USAGE DECISION
# ============================================================

json_usage_policy:
- use normal columns for stable query-critical fields
- use json only for bounded flexible payload summaries
- do not hide major business state inside opaque json blobs
- json is acceptable for payload summary, tag summary, or bounded snapshot support

recommended_json_columns:
- tag_summary_json
- dashboard_summary_json
- proposed_change_json
- payload_summary_json
- publish_destination_summary
- source_platform_summary

forbidden_direction:
- do not collapse listing, membership, or split state into one large json blob

# ============================================================
# 16. CROSS-SYSTEM REFERENCE DECISION
# ============================================================

cross_system_reference_policy:
- references to StreamingOS canonical assets remain soft refs
- references to Civilization Marketplace objects may remain soft refs
- references to external connector objects remain soft refs
- local app-owned records use direct foreign keys where structurally owned

reference_examples:
- asset_ref = StreamingOS or creator asset reference
- marketplace_listing_ref = Civilization marketplace object reference
- connector_account_ref = external connector binding reference
- viewer_ref = downstream or shared identity reference

# ============================================================
# 17. PHYSICAL SCHEMA NON-DECISIONS
# ============================================================

not_fixed_in_this_memo:
- exact schema name
- exact SQL dialect
- exact numeric precision and scale
- exact uuid generation mechanism
- exact index names
- exact partitioning strategy
- exact row-level security expression
- exact materialized view strategy

reason:
These depend on shared platform and DB execution context.

# ============================================================
# 18. IMPLEMENTATION HANDOFF DECISION
# ============================================================

handoff_decisions_frozen:
- domain-separated table grouping
- direct FK vs soft ref direction
- enum-as-value storage direction
- money-as-amount-plus-currency direction
- optimistic locking direction
- append-only audit direction
- first-class runtime/dead-letter tables
- bounded json usage only

# ============================================================
# 19. FIXED DB MAPPING STATEMENT
# ============================================================

fixed_statement:
StreamStudio DB-side mapping is frozen at the semantic level.
Physical SQL may still be chosen later, but it must preserve
domain separation, auditable state transitions, explicit money
storage, first-class runtime visibility, and additive-safe growth.
