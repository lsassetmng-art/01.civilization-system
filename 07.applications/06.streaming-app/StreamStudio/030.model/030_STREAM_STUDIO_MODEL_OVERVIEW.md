# ============================================================
# STREAM STUDIO MODEL OVERVIEW
# ============================================================

status: draft
layer: model
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended creator-side records of StreamStudio.

# 1. PROJECT AND MEMBER RECORDS

creator_project:
- creator_project_id
- project_code
- project_title
- project_status
- owner_creator_ref
- created_at
- updated_at

creator_project_member:
- creator_project_member_id
- creator_project_id
- member_ref
- role_code
- permission_profile_ref
- assignment_scope_summary
- due_at
- joined_at
- updated_at

# 2. UPLOAD AND DRAFT RECORDS

creator_upload_job:
- creator_upload_job_id
- upload_target_type
- source_file_name
- file_size_bytes
- mime_type
- ingest_status
- resumable_session_ref
- failure_summary
- created_at
- updated_at

creator_video_draft:
- creator_video_draft_id
- creator_project_id
- asset_ref
- draft_status
- title
- description
- default_language
- tag_summary_json
- thumbnail_asset_ref
- subtitle_package_ref
- draft_version
- created_at
- updated_at

creator_edit_marker:
- creator_edit_marker_id
- creator_video_draft_id
- marker_type
- start_ms
- end_ms
- marker_summary
- created_by
- created_at
- updated_at

creator_subtitle_track:
- creator_subtitle_track_id
- creator_video_draft_id
- language_code
- source_type
- subtitle_status
- file_asset_ref
- draft_flag
- created_at
- updated_at

# 3. REVIEW AND THREAD RECORDS

creator_review_comment:
- creator_review_comment_id
- review_ref
- comment_type
- anchor_mode
- anchor_start_ms
- anchor_end_ms
- message_body
- attachment_ref
- created_by
- created_at
- updated_at

creator_revision_request:
- creator_revision_request_id
- revision_ref
- request_status
- requester_ref
- assignee_ref
- revision_summary
- due_at
- resolved_at
- created_at
- updated_at

creator_thread:
- creator_thread_id
- thread_ref
- thread_type
- thread_status
- latest_message_at
- created_at
- updated_at

creator_thread_message:
- creator_thread_message_id
- creator_thread_id
- message_type
- body
- attachment_ref
- created_by
- created_at

# 4. APPROVAL AND PUBLISH RECORDS

creator_approval_request:
- creator_approval_request_id
- approval_ref
- approval_type
- approval_status
- requested_by
- requested_at
- due_at
- created_at
- updated_at

creator_approval_decision:
- creator_approval_decision_id
- creator_approval_request_id
- approver_ref
- decision_code
- decision_note
- decided_at
- created_at

creator_publish_setting:
- creator_publish_setting_id
- publish_ref
- visibility_code
- scheduled_publish_at
- publish_destination_summary
- rights_check_status
- readiness_status
- created_at
- updated_at

creator_publish_request:
- creator_publish_request_id
- publish_ref
- request_status
- requested_by
- execute_after
- created_at
- updated_at

creator_external_push_job:
- creator_external_push_job_id
- push_ref
- target_platform_code
- push_status
- connector_account_ref
- request_payload_hash
- response_summary
- retry_count
- next_retry_at
- created_at
- updated_at

# 5. SPLIT AND SETTLEMENT RECORDS

creator_split_draft:
- creator_split_draft_id
- split_code
- split_status
- target_asset_ref
- currency_code
- revenue_basis_type
- created_by
- created_at
- updated_at

creator_split_party:
- creator_split_party_id
- creator_split_draft_id
- party_ref
- party_role_code
- percentage_rate
- fixed_fee_amount
- fixed_fee_currency
- priority_order
- created_at
- updated_at

creator_split_negotiation_log:
- creator_split_negotiation_log_id
- creator_split_draft_id
- log_type
- message_body
- proposed_change_json
- logged_by
- created_at

creator_settlement_reference:
- creator_settlement_reference_id
- settlement_ref
- settlement_status
- source_platform_summary
- gross_amount
- net_amount
- currency_code
- period_start
- period_end
- created_at
- updated_at

# 6. MODEL PRINCIPLE

These records are creator-side operational records.
Canonical ownership, publication truth,
and final monetization truth remain aligned
to StreamingOS-side canonical models.
