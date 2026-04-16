# ============================================================
# STREAM STUDIO SCREEN STATE TRANSITION EXACT TABLE
# ============================================================

status: draft
layer: screen-state-transition-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact screen state transitions, entry conditions,
blocking conditions, and action-result transitions of StreamStudio.

design_principles:
- every critical screen action must have an explicit target state
- ui transitions must not hide approval, rights, pricing, or split blockers
- transition rules must remain separable by domain
- publish, listing, membership, and split transitions must never collapse into one ambiguous state
- mobile and desktop may differ in presentation but not in authority rules

# ============================================================
# 1. GLOBAL SCREEN STATE SET
# ============================================================

global_state_set:
- initial
- loading
- ready
- empty
- blocked
- action_pending
- action_succeeded
- action_failed
- stale
- archived_view

global_transition_rules:
- initial -> loading
- loading -> ready
- loading -> empty
- loading -> action_failed
- ready -> action_pending
- action_pending -> action_succeeded
- action_pending -> action_failed
- ready -> blocked
- blocked -> ready_when_blocker_cleared
- ready -> stale_when_underlying_version_changes
- stale -> loading_on_refresh

# ============================================================
# 2. HOME DASHBOARD TRANSITION TABLE
# ============================================================

screen: home_dashboard

entry_conditions:
- workspace_scope_required

states:
- loading_summary
- ready_summary
- empty_summary
- failed_summary_load

transitions:
- open_home -> loading_summary
- loading_summary -> ready_summary when_summary_loaded
- loading_summary -> empty_summary when_no_visible_items
- loading_summary -> failed_summary_load when_summary_request_failed
- ready_summary -> loading_summary on_manual_refresh
- ready_summary -> project_list_filtered_draft on_tap_drafts_in_progress
- ready_summary -> upload_queue_detail on_tap_active_uploads
- ready_summary -> review_workspace_filtered_review on_tap_needs_my_review
- ready_summary -> publish_settings_filtered_today on_tap_scheduled_today
- ready_summary -> revenue_split_filtered_confirmation on_tap_split_confirmation_waiting
- ready_summary -> marketplace_listing_filtered_failure on_tap_listing_failures
- ready_summary -> membership_manager on_tap_membership_summary

blocking_conditions:
- workspace_view_denied

error_surfaces:
- dashboard_summary_load_failed
- notification_summary_load_failed

# ============================================================
# 3. PROJECT DETAIL TRANSITION TABLE
# ============================================================

screen: project_detail

entry_conditions:
- project_scope_required
- visible_project_required

tab_states:
- overview_tab
- assets_tab
- metadata_tab
- subtitle_tab
- review_tab
- approval_tab
- publish_tab
- split_tab
- audit_tab

project_status_states:
- project_draft
- project_in_review
- project_approval_pending
- project_publish_ready
- project_scheduled
- project_published
- project_failed
- project_archived

transitions:
- open_project_detail -> loading
- loading -> overview_tab when_project_loaded
- any_tab -> assets_tab on_select_assets
- any_tab -> metadata_tab on_select_metadata
- any_tab -> subtitle_tab on_select_subtitle
- any_tab -> review_tab on_select_review
- any_tab -> approval_tab on_select_approval
- any_tab -> publish_tab on_select_publish
- any_tab -> split_tab on_select_split
- any_tab -> audit_tab on_select_audit
- assets_tab -> action_pending on_upload_asset
- action_pending -> assets_tab when_upload_registered
- metadata_tab -> action_pending on_save_metadata
- action_pending -> metadata_tab when_metadata_saved
- review_tab -> action_pending on_create_revision_request
- action_pending -> review_tab when_revision_created
- approval_tab -> action_pending on_request_approval
- action_pending -> approval_tab when_approval_requested
- publish_tab -> action_pending on_validate_readiness
- action_pending -> publish_tab when_readiness_returned
- split_tab -> action_pending on_submit_split_approval
- action_pending -> split_tab when_split_approval_submitted

cross_domain_transitions:
- project_draft -> project_in_review when_review_request_created
- project_in_review -> project_approval_pending when_all_blocking_revisions_resolved_and_approval_requested
- project_approval_pending -> project_publish_ready when_required_approval_completed
- project_publish_ready -> project_scheduled when_publish_scheduled
- project_publish_ready -> project_published when_publish_succeeded
- any_active_project_state -> project_failed when_terminal_publish_or_listing_failure_blocks_progress

blocking_conditions:
- project_not_found
- project_view_denied
- unresolved_blocking_revision
- unresolved_rights_issue
- approval_required_but_missing
- split_required_but_missing_for_monetized_release

# ============================================================
# 4. UPLOAD QUEUE TRANSITION TABLE
# ============================================================

screen: upload_queue

entry_conditions:
- asset_scope_required

queue_item_states:
- queued
- uploading
- processing
- completed
- failed
- cancelled

transitions:
- create_upload_session -> queued
- queued -> uploading when_upload_stream_started
- uploading -> processing when_all_chunks_received
- processing -> completed when_ingest_finalized
- uploading -> failed when_transfer_failed
- processing -> failed when_ingest_processing_failed
- queued -> cancelled on_cancel_before_start
- uploading -> cancelled on_cancel_when_safe
- failed -> queued on_retry_as_new
- failed -> uploading on_resume_retry_when_supported
- cancelled -> queued on_retry_as_new
- completed -> project_detail on_open_project

blocking_conditions:
- asset_upload_denied
- unsupported_file_format
- upload_session_terminal_failed

error_surfaces:
- network_unavailable
- upload_session_expired
- file_format_rejected
- ingest_processing_failed
- permission_denied

# ============================================================
# 5. REVIEW WORKSPACE TRANSITION TABLE
# ============================================================

screen: review_workspace

entry_conditions:
- project_scope_required
- review_item_visibility_required

review_states:
- needs_my_review
- needs_my_response
- overdue
- blocked
- resolved

revision_states:
- open
- accepted
- in_progress
- resubmitted
- verified
- rejected
- cancelled

transitions:
- open_review_workspace -> loading
- loading -> needs_my_review when_default_filter_loaded
- any_review_filter -> blocked when_item_has_blocking_issue
- needs_my_review -> action_pending on_add_comment
- action_pending -> needs_my_review when_comment_saved
- needs_my_review -> action_pending on_create_revision_request
- action_pending -> open when_revision_created
- open -> accepted on_assignee_accept
- accepted -> in_progress on_start_work
- in_progress -> resubmitted on_submit_revision
- resubmitted -> verified on_reviewer_verify
- open -> rejected on_assignee_reject
- open -> cancelled on_requester_cancel
- verified -> resolved when_no_remaining_blockers

approval_bridge_transitions:
- resolved -> action_pending on_request_approval
- action_pending -> approval_requested_return_state when_approval_request_created

blocking_conditions:
- review_item_not_found
- approval_request_denied
- invalid_revision_state_transition
- unresolved_rights_issue_prevents_approval_request

# ============================================================
# 6. PUBLISH SETTINGS TRANSITION TABLE
# ============================================================

screen: publish_settings

entry_conditions:
- publish_scope_required
- publish_ref_visible

publish_states:
- draft_publish_setting
- readiness_checked
- approval_blocked
- rights_blocked
- publish_ready
- scheduled
- published
- failed
- partially_published_external_failed

transitions:
- open_publish_settings -> loading
- loading -> draft_publish_setting when_publish_setting_loaded
- draft_publish_setting -> action_pending on_save_publish_setting
- action_pending -> draft_publish_setting when_publish_setting_saved
- draft_publish_setting -> action_pending on_validate_readiness
- action_pending -> readiness_checked when_validation_completed
- readiness_checked -> approval_blocked when_approval_missing
- readiness_checked -> rights_blocked when_rights_issue_present
- readiness_checked -> publish_ready when_all_checks_pass
- publish_ready -> action_pending on_publish_now
- action_pending -> published when_canonical_publish_succeeded_and_no_external_failure
- action_pending -> partially_published_external_failed when_canonical_publish_succeeded_but_external_push_failed
- publish_ready -> scheduled on_schedule_publish
- scheduled -> published when_scheduled_publish_executor_succeeds
- any_non_terminal_publish_state -> failed when_terminal_publish_failure_occurs
- partially_published_external_failed -> action_pending on_retry_external_push
- action_pending -> published when_external_push_retry_succeeds

blocking_conditions:
- publish_denied
- publish_not_ready
- publish_approval_required
- publish_rights_blocked
- connector_binding_invalid
- invalid_schedule_window

# ============================================================
# 7. MARKETPLACE LISTING TRANSITION TABLE
# ============================================================

screen: marketplace_listing

entry_conditions:
- listing_scope_required
- source_asset_visibility_required

listing_states:
- draft
- validation_pending
- approval_pending
- ready
- listed
- delisted
- blocked
- archived

transitions:
- open_marketplace_listing -> loading
- loading -> draft when_listing_loaded_or_created
- draft -> action_pending on_save_listing_draft
- action_pending -> draft when_listing_saved
- draft -> validation_pending on_validate_listing
- validation_pending -> ready when_all_listing_checks_pass
- validation_pending -> blocked when_listing_validation_fails
- ready -> approval_pending when_listing_review_required
- approval_pending -> ready when_required_approval_completed
- ready -> action_pending on_list_now
- action_pending -> listed when_listing_activation_succeeds
- ready -> action_pending on_schedule_listing
- action_pending -> listed when_scheduled_listing_executor_succeeds
- listed -> action_pending on_delist
- action_pending -> delisted when_delist_succeeds
- listed -> draft on_clone_as_new_offer
- blocked -> draft when_blockers_cleared_and_resaved

blocking_conditions:
- listing_manage_denied
- asset_not_publish_ready
- listing_not_ready
- listing_approval_required
- listing_split_required
- listing_membership_conflict
- invalid_price_configuration
- invalid_membership_binding
- category_policy_rejected

# ============================================================
# 8. MEMBERSHIP MANAGER TRANSITION TABLE
# ============================================================

screen: membership_manager

entry_conditions:
- membership_scope_required

program_states:
- draft
- review_pending
- active
- paused
- ended
- archived

tier_states:
- draft
- active
- disabled
- archived

transitions:
- open_membership_manager -> loading
- loading -> draft when_program_loaded_or_created
- draft -> action_pending on_save_program
- action_pending -> draft when_program_saved
- draft -> action_pending on_add_tier
- action_pending -> draft when_tier_saved
- draft -> action_pending on_add_benefit
- action_pending -> draft when_benefit_saved
- draft -> action_pending on_bind_content_rule
- action_pending -> draft when_content_rule_saved
- draft -> review_pending when_activation_requires_review_and_request_submitted
- draft -> action_pending on_activate_program_when_no_review_required
- review_pending -> active when_required_approval_completed
- action_pending -> active when_activation_succeeds
- active -> action_pending on_pause_program
- action_pending -> paused when_pause_succeeds
- paused -> action_pending on_resume_program
- action_pending -> active when_resume_succeeds
- active -> action_pending on_end_program
- paused -> action_pending on_end_program
- action_pending -> ended when_end_succeeds

blocking_conditions:
- membership_manage_denied
- membership_program_not_ready
- membership_program_approval_required
- membership_tier_conflict
- membership_content_rule_conflict
- early_access_rule_invalid
- unresolved_rights_for_member_only_asset

# ============================================================
# 9. REVENUE SPLIT EDITOR TRANSITION TABLE
# ============================================================

screen: revenue_split_editor

entry_conditions:
- split_scope_required

split_states:
- draft
- awaiting_confirmation
- under_negotiation
- approval_pending
- active
- superseded
- archived

transitions:
- open_split_editor -> loading
- loading -> draft when_split_loaded_or_created
- draft -> action_pending on_add_or_update_split_line
- action_pending -> draft when_split_line_saved
- draft -> under_negotiation on_add_negotiation_message
- under_negotiation -> draft when_creator_revises_lines
- draft -> approval_pending on_submit_split_approval
- under_negotiation -> approval_pending on_submit_split_approval
- approval_pending -> active when_required_approval_completed_and_activation_executed
- draft -> action_pending on_activate_split_when_no_approval_required
- action_pending -> active when_activation_succeeds
- active -> superseded when_new_split_version_activated

blocking_conditions:
- split_manage_denied
- split_percentage_invalid
- split_approval_required
- split_missing_required_party
- split_currency_mismatch
- overlapping_active_split_version

# ============================================================
# 10. COLLABORATOR MANAGER TRANSITION TABLE
# ============================================================

screen: collaborator_manager

entry_conditions:
- project_scope_required

member_management_states:
- loading
- ready
- invite_pending
- update_pending
- failed

transitions:
- open_collaborator_manager -> loading
- loading -> ready when_member_list_loaded
- ready -> invite_pending on_invite_member
- invite_pending -> ready when_invitation_sent
- ready -> update_pending on_change_role_or_scope
- update_pending -> ready when_member_update_saved
- ready -> update_pending on_remove_member
- update_pending -> ready when_removal_succeeds
- ready -> failed when_member_operation_failed
- failed -> ready on_refresh_or_retry

blocking_conditions:
- cannot_remove_sole_required_owner_without_transfer
- cannot_grant_admin_override_without_admin_role
- cannot_grant_publish_if_policy_disallows_role
- cannot_grant_split_management_without_split_visibility
- project_edit_denied

# ============================================================
# 11. NOTIFICATION AND MOBILE QUICK ACTION TRANSITION TABLE
# ============================================================

screen: notification_and_mobile

entry_conditions:
- authenticated_required

notification_states:
- loading
- ready
- empty
- failed

mobile_quick_action_states:
- idle
- action_pending
- action_succeeded
- action_failed

transitions:
- open_notification_inbox -> loading
- loading -> ready when_notifications_loaded
- loading -> empty when_no_notifications
- loading -> failed when_notification_load_failed
- ready -> action_pending on_mark_read
- action_pending -> ready when_mark_read_saved
- ready -> project_detail on_open_related_project
- ready -> review_workspace on_open_review_item
- ready -> publish_settings on_open_publish_failure
- ready -> revenue_split_editor on_open_split_editor
- ready -> marketplace_listing on_open_listing_failure
- ready -> membership_manager on_open_membership_alert
- mobile_idle -> action_pending on_quick_metadata_edit
- action_pending -> action_succeeded when_quick_edit_saved
- mobile_idle -> action_pending on_quick_comment_reply
- action_pending -> action_succeeded when_reply_saved
- mobile_idle -> action_pending on_approve_or_reject_request
- action_pending -> action_succeeded when_decision_saved
- mobile_idle -> action_pending on_confirm_publish
- action_pending -> action_succeeded when_publish_request_created
- mobile_idle -> action_pending on_retry_external_push_if_permitted
- action_pending -> action_succeeded when_retry_registered

blocking_conditions:
- offline_prevents_publish_execution
- offline_prevents_external_push_retry
- permission_denied_for_target_action

# ============================================================
# 12. CROSS-SCREEN HANDOFF TABLE
# ============================================================

cross_screen_handoffs:
- home_dashboard.new_upload -> upload_queue with_creator_project_context
- upload_queue.completed_item -> project_detail.assets_tab with_uploaded_asset_context
- project_detail.review_tab -> review_workspace with_project_filter
- project_detail.publish_tab -> publish_settings with_publish_ref
- project_detail.split_tab -> revenue_split_editor with_target_asset_ref
- publish_settings.listing_entry -> marketplace_listing with_asset_ref_and_publish_ref
- marketplace_listing.membership_binding -> membership_manager with_program_context
- membership_manager.content_rule_asset_entry -> project_detail.publish_tab with_asset_context
- notification_inbox.open_failure -> target_screen_with_failure_context

handoff_rules:
- target context must be explicit
- hidden implicit cross-screen mutation is forbidden
- if source context is stale, target screen must refresh before allowing mutation

# ============================================================
# 13. STALE DATA AND REFRESH RULES
# ============================================================

stale_data_rules:
- any mutation success marks sibling summary widgets stale
- versioned screens must refresh when expected_version_conflict_occurs
- publish, listing, membership, and split screens must revalidate after approval completion
- notification-driven deep links must refresh target summary before action

refresh_triggers:
- approval_decision_completed
- publish_succeeded
- listing_succeeded
- membership_program_activated
- split_activated
- external_push_retry_succeeded
- settlement_reference_synced

# ============================================================
# 14. CONFIRMATION-SHEET REQUIRED ACTIONS
# ============================================================

confirmation_required_actions:
- publish_now
- schedule_publish
- list_now
- delist_listing
- activate_membership_program
- end_membership_program
- activate_split
- admin_override
- retry_external_push

confirmation_requirements:
- action_summary
- target_summary
- blocker_warning_summary_if_any
- irreversible_flag_if_any
- reason_entry_required_for_admin_override

# ============================================================
# 15. FIXED SCREEN TRANSITION STATEMENT
# ============================================================

fixed_statement:
- screen transitions in StreamStudio are explicit, blocker-aware, and domain-separated
- publish, listing, membership, split, and approval transitions must remain independently observable
- no ui shortcut may bypass approval, rights, pricing, membership, or split validation rules
