# ============================================================
# STREAM STUDIO SCREEN AND STATEFLOW
# ============================================================

status: upgraded-draft
layer: screen-and-stateflow
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the primary screen architecture and operating flow.

primary_navigation:
- Home
- Library
- Upload Queue
- Projects
- Review
- Publish
- Commerce
- Revenue & Split
- Collaborators
- Notifications
- Settings

core_stateflow:
upload_to_publish:
  - create_project_or_draft
  - upload_media
  - save_metadata
  - assign_thumbnail
  - attach_subtitle
  - add_trim_cut_markers
  - send_review_request
  - resolve_revision
  - send_approval_request
  - configure_publish
  - publish_to_streamingos

publish_to_sale:
  - create_marketplace_listing
  - bind_access_policy
  - select_free_or_paid_or_membership_mode
  - validate_rights_and_pricing
  - submit_listing_review_if_required
  - list_to_civilization_marketplace

membership_flow:
  - create_membership_program
  - create_tier
  - define_benefits
  - bind_content_rule
  - activate_program
  - manage_pause_or_end

split_flow:
  - split_draft_created
  - members_and_basis_assigned
  - fixed_fee_and_percentage_entered
  - negotiation_log_updated
  - approval_executed_if_required
  - split_becomes_active

detailed_exact_documents:
- 041_STREAM_STUDIO_HOME_DASHBOARD_EXACT.md
- 042_STREAM_STUDIO_PROJECT_DETAIL_EXACT.md
- 043_STREAM_STUDIO_UPLOAD_QUEUE_EXACT.md
- 044_STREAM_STUDIO_REVIEW_WORKSPACE_EXACT.md
- 045_STREAM_STUDIO_PUBLISH_SETTINGS_EXACT.md
- 046_STREAM_STUDIO_REVENUE_SPLIT_EDITOR_EXACT.md
- 047_STREAM_STUDIO_COLLABORATOR_MANAGER_EXACT.md
- 048_STREAM_STUDIO_NOTIFICATION_AND_MOBILE_EXACT.md
- 049_STREAM_STUDIO_MARKETPLACE_LISTING_EXACT.md
- 050_STREAM_STUDIO_MEMBERSHIP_MANAGER_EXACT.md

stateflow_principle:
- no state transition may hide approval dependency
- no state transition may hide rights dependency
- no state transition may hide connector failure
- no state transition may hide split conflict
- no state transition may hide pricing conflict
- no state transition may hide entitlement rule conflict
