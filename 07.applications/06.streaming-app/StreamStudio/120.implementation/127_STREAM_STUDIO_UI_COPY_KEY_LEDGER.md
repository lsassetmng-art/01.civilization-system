# ============================================================
# STREAM STUDIO UI COPY KEY LEDGER
# ============================================================

status: draft
layer: implementation-ledger
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the stable UI copy key direction for StreamStudio.

copy_key_principles:
- copy keys use lowercase dot notation
- copy keys are semantic and screen-aware
- copy keys are stable identifiers, not display text
- identical meaning across screens should reuse the same key
- error display copy uses error-specific namespaces
- labels, actions, banners, dialogs, and empty states remain separated

language_policy:
- canonical key names are language-neutral
- ja and en strings are managed outside this ledger
- copy key reuse is preferred over near-duplicate keys

# ============================================================
# 1. COMMON KEYS
# ============================================================

common_keys:
- common.action.save
- common.action.cancel
- common.action.retry
- common.action.refresh
- common.action.close
- common.action.confirm
- common.action.back
- common.action.next
- common.action.open
- common.action.edit
- common.action.delete_soft
- common.action.archive
- common.label.status
- common.label.updated_at
- common.label.created_at
- common.label.owner
- common.label.currency
- common.label.language
- common.state.loading
- common.state.empty
- common.state.blocked
- common.state.failed
- common.banner.saved
- common.banner.validation_failed

# ============================================================
# 2. HOME DASHBOARD KEYS
# ============================================================

home_keys:
- streamstudio.home.title
- streamstudio.home.quick_create
- streamstudio.home.card.drafts_in_progress
- streamstudio.home.card.uploads_processing
- streamstudio.home.card.approval_waiting
- streamstudio.home.card.scheduled_today
- streamstudio.home.card.push_failures
- streamstudio.home.card.split_confirmation_waiting
- streamstudio.home.widget.upload_queue
- streamstudio.home.widget.review_and_approval
- streamstudio.home.widget.scheduled_publish
- streamstudio.home.widget.split_and_settlement
- streamstudio.home.widget.failed_actions
- streamstudio.home.widget.recent_activity
- streamstudio.home.empty.no_active_work

# ============================================================
# 3. PROJECT DETAIL KEYS
# ============================================================

project_detail_keys:
- streamstudio.project.title
- streamstudio.project.tab.overview
- streamstudio.project.tab.assets
- streamstudio.project.tab.metadata
- streamstudio.project.tab.subtitle
- streamstudio.project.tab.review
- streamstudio.project.tab.approval
- streamstudio.project.tab.publish
- streamstudio.project.tab.split
- streamstudio.project.tab.audit
- streamstudio.project.action.upload_asset
- streamstudio.project.action.request_review
- streamstudio.project.action.request_approval
- streamstudio.project.action.open_publish
- streamstudio.project.action.open_split_editor
- streamstudio.project.banner.unresolved_blocker
- streamstudio.project.banner.approval_required
- streamstudio.project.banner.rights_blocked

# ============================================================
# 4. UPLOAD QUEUE KEYS
# ============================================================

upload_queue_keys:
- streamstudio.upload_queue.title
- streamstudio.upload_queue.filter.all
- streamstudio.upload_queue.filter.my_uploads
- streamstudio.upload_queue.filter.active_only
- streamstudio.upload_queue.filter.failed_only
- streamstudio.upload_queue.column.file_name
- streamstudio.upload_queue.column.progress
- streamstudio.upload_queue.column.status
- streamstudio.upload_queue.action.start_now
- streamstudio.upload_queue.action.pause
- streamstudio.upload_queue.action.resume
- streamstudio.upload_queue.action.retry
- streamstudio.upload_queue.action.cancel
- streamstudio.upload_queue.error.network_unavailable
- streamstudio.upload_queue.error.upload_session_expired
- streamstudio.upload_queue.error.file_format_rejected
- streamstudio.upload_queue.error.ingest_processing_failed

# ============================================================
# 5. REVIEW / APPROVAL KEYS
# ============================================================

review_approval_keys:
- streamstudio.review.title
- streamstudio.review.filter.needs_my_review
- streamstudio.review.filter.needs_my_response
- streamstudio.review.filter.overdue
- streamstudio.review.filter.blocked
- streamstudio.review.action.add_comment
- streamstudio.review.action.create_revision_request
- streamstudio.review.action.resolve_comment
- streamstudio.review.action.request_approval
- streamstudio.review.label.timeline_comment
- streamstudio.review.label.metadata_comment
- streamstudio.review.label.blocking_revision
- streamstudio.approval.title
- streamstudio.approval.action.approve
- streamstudio.approval.action.reject
- streamstudio.approval.banner.request_created
- streamstudio.approval.banner.decision_saved

# ============================================================
# 6. PUBLISH KEYS
# ============================================================

publish_keys:
- streamstudio.publish.title
- streamstudio.publish.section.visibility
- streamstudio.publish.section.schedule
- streamstudio.publish.section.destination
- streamstudio.publish.section.readiness
- streamstudio.publish.section.history
- streamstudio.publish.action.validate_readiness
- streamstudio.publish.action.publish_now
- streamstudio.publish.action.schedule_publish
- streamstudio.publish.action.retry_external_push
- streamstudio.publish.visibility.private
- streamstudio.publish.visibility.limited
- streamstudio.publish.visibility.public
- streamstudio.publish.visibility.scheduled_public
- streamstudio.publish.banner.readiness_success
- streamstudio.publish.banner.external_push_failed
- streamstudio.publish.error.publish_not_ready
- streamstudio.publish.error.publish_approval_required
- streamstudio.publish.error.publish_rights_blocked

# ============================================================
# 7. MARKETPLACE / COMMERCE KEYS
# ============================================================

marketplace_keys:
- streamstudio.marketplace.title
- streamstudio.marketplace.section.listing_header
- streamstudio.marketplace.section.access_mode
- streamstudio.marketplace.section.price
- streamstudio.marketplace.section.release
- streamstudio.marketplace.section.membership_binding
- streamstudio.marketplace.section.validation
- streamstudio.marketplace.action.save_draft
- streamstudio.marketplace.action.validate
- streamstudio.marketplace.action.submit_review
- streamstudio.marketplace.action.list_now
- streamstudio.marketplace.action.schedule_listing
- streamstudio.marketplace.action.delist
- streamstudio.marketplace.action.clone_offer
- streamstudio.marketplace.access_mode.free
- streamstudio.marketplace.access_mode.one_time_paid
- streamstudio.marketplace.access_mode.membership_only
- streamstudio.marketplace.access_mode.member_early_access_then_public
- streamstudio.marketplace.banner.listed
- streamstudio.marketplace.banner.delisted
- streamstudio.marketplace.error.listing_not_ready
- streamstudio.marketplace.error.listing_split_required
- streamstudio.marketplace.error.listing_membership_conflict
- streamstudio.marketplace.error.invalid_price_configuration

# ============================================================
# 8. MEMBERSHIP KEYS
# ============================================================

membership_keys:
- streamstudio.membership.title
- streamstudio.membership.section.program
- streamstudio.membership.section.tiers
- streamstudio.membership.section.benefits
- streamstudio.membership.section.content_rules
- streamstudio.membership.section.member_reference
- streamstudio.membership.action.create_program
- streamstudio.membership.action.add_tier
- streamstudio.membership.action.add_benefit
- streamstudio.membership.action.bind_content_rule
- streamstudio.membership.action.activate_program
- streamstudio.membership.action.pause_program
- streamstudio.membership.action.resume_program
- streamstudio.membership.action.end_program
- streamstudio.membership.banner.activated
- streamstudio.membership.banner.paused
- streamstudio.membership.banner.ended
- streamstudio.membership.error.program_not_ready
- streamstudio.membership.error.program_approval_required
- streamstudio.membership.error.tier_conflict
- streamstudio.membership.error.content_rule_conflict

# ============================================================
# 9. SPLIT / SETTLEMENT KEYS
# ============================================================

split_keys:
- streamstudio.split.title
- streamstudio.split.section.basis
- streamstudio.split.section.party_lines
- streamstudio.split.section.fixed_fee
- streamstudio.split.section.percentage
- streamstudio.split.section.negotiation_log
- streamstudio.split.section.settlement_reference
- streamstudio.split.action.add_party
- streamstudio.split.action.submit_approval
- streamstudio.split.action.activate
- streamstudio.split.banner.approval_submitted
- streamstudio.split.banner.activated
- streamstudio.split.error.percentage_invalid
- streamstudio.split.error.approval_required
- streamstudio.split.error.missing_required_party
- streamstudio.split.error.overlapping_active_version

# ============================================================
# 10. COLLABORATOR / NOTIFICATION KEYS
# ============================================================

collaborator_notification_keys:
- streamstudio.collaborator.title
- streamstudio.collaborator.action.invite_member
- streamstudio.collaborator.action.change_role
- streamstudio.collaborator.action.update_scope
- streamstudio.collaborator.action.remove_member
- streamstudio.collaborator.error.remove_sole_required_owner
- streamstudio.notification.title
- streamstudio.notification.action.mark_read
- streamstudio.notification.action.mark_all_read
- streamstudio.notification.empty.no_notifications
- streamstudio.mobile.quick_action.metadata_edit
- streamstudio.mobile.quick_action.comment_reply
- streamstudio.mobile.quick_action.approve_or_reject
- streamstudio.mobile.quick_action.confirm_publish
- streamstudio.mobile.quick_action.retry_external_push

# ============================================================
# 11. CONFIRMATION / DIALOG KEYS
# ============================================================

dialog_keys:
- streamstudio.dialog.publish_now.title
- streamstudio.dialog.publish_now.message
- streamstudio.dialog.schedule_publish.title
- streamstudio.dialog.list_now.title
- streamstudio.dialog.delist.title
- streamstudio.dialog.activate_membership.title
- streamstudio.dialog.end_membership.title
- streamstudio.dialog.activate_split.title
- streamstudio.dialog.retry_external_push.title
- streamstudio.dialog.admin_override.title
- streamstudio.dialog.admin_override.reason_label

# ============================================================
# 12. FIXED UI COPY STATEMENT
# ============================================================

fixed_statement:
- copy keys above are frozen as implementation-level stable keys
- display text must be managed outside this ledger
- future additions must be additive and ledger-updated
