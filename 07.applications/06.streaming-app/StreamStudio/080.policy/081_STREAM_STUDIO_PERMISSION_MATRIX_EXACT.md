# ============================================================
# STREAM STUDIO PERMISSION MATRIX EXACT
# ============================================================

status: draft
layer: policy-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact permission matrix of StreamStudio.

# ============================================================
# 1. ROLE SET
# ============================================================

roles:
- creator
- collaborator
- producer
- admin
- membership_operator

role_intent:
  creator:
    - owns creator-side asset operation
    - prepares publish and commerce configuration
  collaborator:
    - contributes to production and review tasks
    - does not own final publish or commerce authority by default
  producer:
    - manages workflow, approvals, and release readiness
  admin:
    - controls policy, exceptions, and audit-critical actions
  membership_operator:
    - manages membership program, tier, and access rules

# ============================================================
# 2. SCOPE SET
# ============================================================

scopes:
- workspace_scope
- project_scope
- asset_scope
- publish_scope
- listing_scope
- membership_scope
- split_scope
- connector_scope

scope_meaning:
  workspace_scope:
    - dashboard-level and workspace-wide operation visibility
  project_scope:
    - project detail and collaboration control
  asset_scope:
    - source media, thumbnail, subtitle, and draft editing control
  publish_scope:
    - publish setting and publish execution control
  listing_scope:
    - marketplace listing and paid offer control
  membership_scope:
    - membership program, tier, benefit, and content-rule control
  split_scope:
    - split draft, approval, and activation control
  connector_scope:
    - external account binding and push retry control

# ============================================================
# 3. ACTION SET
# ============================================================

actions:
- view_workspace
- view_project
- upload_asset
- edit_metadata
- manage_thumbnail
- manage_subtitle
- manage_edit_marker
- comment
- request_revision
- respond_revision
- request_approval
- approve
- manage_publish_setting
- publish_internal
- schedule_publish
- manage_marketplace_listing
- manage_paid_offer
- list_to_marketplace
- delist_marketplace_listing
- manage_membership_program
- manage_membership_tier
- manage_membership_benefit
- bind_membership_content_rule
- activate_membership_program
- pause_membership_program
- manage_split
- submit_split_approval
- activate_split
- view_settlement_reference
- manage_external_push
- retry_external_push
- view_connector_audit
- admin_override

# ============================================================
# 4. DEFAULT ROLE MATRIX
# ============================================================

default_role_matrix:
  creator:
    allow:
      - view_workspace
      - view_project
      - upload_asset
      - edit_metadata
      - manage_thumbnail
      - manage_subtitle
      - manage_edit_marker
      - comment
      - request_revision
      - respond_revision
      - request_approval
      - manage_publish_setting
      - publish_internal
      - schedule_publish
      - manage_marketplace_listing
      - manage_paid_offer
      - list_to_marketplace
      - delist_marketplace_listing
      - manage_membership_program
      - manage_membership_tier
      - manage_membership_benefit
      - bind_membership_content_rule
      - activate_membership_program
      - pause_membership_program
      - manage_split
      - submit_split_approval
      - activate_split
      - view_settlement_reference
      - manage_external_push
      - retry_external_push
    deny_by_default:
      - approve
      - view_connector_audit
      - admin_override

  collaborator:
    allow:
      - view_project
      - upload_asset
      - edit_metadata
      - manage_thumbnail
      - manage_subtitle
      - manage_edit_marker
      - comment
      - request_revision
      - respond_revision
    deny_by_default:
      - request_approval
      - approve
      - manage_publish_setting
      - publish_internal
      - schedule_publish
      - manage_marketplace_listing
      - manage_paid_offer
      - list_to_marketplace
      - delist_marketplace_listing
      - manage_membership_program
      - manage_membership_tier
      - manage_membership_benefit
      - bind_membership_content_rule
      - activate_membership_program
      - pause_membership_program
      - manage_split
      - submit_split_approval
      - activate_split
      - view_settlement_reference
      - manage_external_push
      - retry_external_push
      - view_connector_audit
      - admin_override

  producer:
    allow:
      - view_workspace
      - view_project
      - comment
      - request_revision
      - respond_revision
      - request_approval
      - approve
      - manage_publish_setting
      - publish_internal
      - schedule_publish
      - manage_marketplace_listing
      - manage_paid_offer
      - list_to_marketplace
      - delist_marketplace_listing
      - manage_split
      - submit_split_approval
      - activate_split
      - view_settlement_reference
      - manage_external_push
      - retry_external_push
    deny_by_default:
      - manage_membership_program
      - manage_membership_tier
      - manage_membership_benefit
      - bind_membership_content_rule
      - activate_membership_program
      - pause_membership_program
      - view_connector_audit
      - admin_override

  admin:
    allow:
      - view_workspace
      - view_project
      - upload_asset
      - edit_metadata
      - manage_thumbnail
      - manage_subtitle
      - manage_edit_marker
      - comment
      - request_revision
      - respond_revision
      - request_approval
      - approve
      - manage_publish_setting
      - publish_internal
      - schedule_publish
      - manage_marketplace_listing
      - manage_paid_offer
      - list_to_marketplace
      - delist_marketplace_listing
      - manage_membership_program
      - manage_membership_tier
      - manage_membership_benefit
      - bind_membership_content_rule
      - activate_membership_program
      - pause_membership_program
      - manage_split
      - submit_split_approval
      - activate_split
      - view_settlement_reference
      - manage_external_push
      - retry_external_push
      - view_connector_audit
      - admin_override
    deny_by_default: []

  membership_operator:
    allow:
      - view_workspace
      - view_project
      - comment
      - request_revision
      - respond_revision
      - manage_marketplace_listing
      - manage_paid_offer
      - manage_membership_program
      - manage_membership_tier
      - manage_membership_benefit
      - bind_membership_content_rule
      - activate_membership_program
      - pause_membership_program
      - view_settlement_reference
    deny_by_default:
      - approve
      - publish_internal
      - schedule_publish
      - manage_split
      - submit_split_approval
      - activate_split
      - manage_external_push
      - retry_external_push
      - view_connector_audit
      - admin_override

# ============================================================
# 5. SCOPE REQUIREMENTS BY ACTION
# ============================================================

scope_requirements:
  view_workspace:
    required_scope: workspace_scope
  view_project:
    required_scope: project_scope
  upload_asset:
    required_scope: asset_scope
  edit_metadata:
    required_scope: asset_scope
  manage_thumbnail:
    required_scope: asset_scope
  manage_subtitle:
    required_scope: asset_scope
  manage_edit_marker:
    required_scope: asset_scope
  comment:
    required_scope: project_scope
  request_revision:
    required_scope: project_scope
  respond_revision:
    required_scope: project_scope
  request_approval:
    required_scope: project_scope
  approve:
    required_scope: publish_scope_or_listing_scope_or_membership_scope_or_split_scope
  manage_publish_setting:
    required_scope: publish_scope
  publish_internal:
    required_scope: publish_scope
  schedule_publish:
    required_scope: publish_scope
  manage_marketplace_listing:
    required_scope: listing_scope
  manage_paid_offer:
    required_scope: listing_scope
  list_to_marketplace:
    required_scope: listing_scope
  delist_marketplace_listing:
    required_scope: listing_scope
  manage_membership_program:
    required_scope: membership_scope
  manage_membership_tier:
    required_scope: membership_scope
  manage_membership_benefit:
    required_scope: membership_scope
  bind_membership_content_rule:
    required_scope: membership_scope
  activate_membership_program:
    required_scope: membership_scope
  pause_membership_program:
    required_scope: membership_scope
  manage_split:
    required_scope: split_scope
  submit_split_approval:
    required_scope: split_scope
  activate_split:
    required_scope: split_scope
  view_settlement_reference:
    required_scope: split_scope_or_listing_scope_or_membership_scope
  manage_external_push:
    required_scope: connector_scope
  retry_external_push:
    required_scope: connector_scope
  view_connector_audit:
    required_scope: connector_scope
  admin_override:
    required_scope: workspace_scope

# ============================================================
# 6. HIGH-RISK ACTION GUARDS
# ============================================================

high_risk_action_guards:
  approve:
    requires:
      - explicit_role_permission
      - scoped_target_visibility
      - target_state_is_approvable
  publish_internal:
    requires:
      - publish_scope
      - readiness_passed
      - approval_satisfied_if_policy_requires
      - rights_clear
  list_to_marketplace:
    requires:
      - listing_scope
      - listing_validation_ready
      - approval_satisfied_if_policy_requires
      - pricing_valid_if_paid
      - membership_binding_valid_if_membership_mode
      - split_configuration_valid_if_required
  activate_membership_program:
    requires:
      - membership_scope
      - tier_configuration_valid
      - benefit_visibility_defined
      - content_rule_conflict_absent
      - approval_satisfied_if_policy_requires
  activate_split:
    requires:
      - split_scope
      - percentage_total_valid
      - overlap_conflict_absent
      - approval_satisfied_if_policy_requires
  admin_override:
    requires:
      - admin_role
      - override_reason_required
      - audit_event_required

# ============================================================
# 7. INHERITANCE AND OVERRIDE RULES
# ============================================================

inheritance_rules:
- workspace_scope never silently grants all child scopes
- project_scope may include asset visibility only when explicitly bound
- asset_scope does not grant publish_scope
- publish_scope does not grant listing_scope
- listing_scope does not grant membership_scope
- membership_scope does not grant split_scope
- admin_override does not replace audit logging

override_rules:
- explicit deny beats inherited allow
- temporary exception must have expires_at
- exception creation requires admin or permitted policy owner
- expired exception must not remain effective
- override reason must remain reconstructible

# ============================================================
# 8. MOBILE RESTRICTION RULES
# ============================================================

mobile_restriction_rules:
- admin_override requires confirmation sheet and reason entry
- activate_split requires confirmation sheet
- activate_membership_program requires confirmation sheet
- list_to_marketplace requires confirmation sheet
- publish_internal requires confirmation sheet
- bulk member authority edits are desktop_or_tablet_recommended
- connector audit browsing is desktop_or_tablet_recommended

# ============================================================
# 9. AUDIT REQUIREMENTS
# ============================================================

audit_required_actions:
- request_approval
- approve
- publish_internal
- schedule_publish
- list_to_marketplace
- delist_marketplace_listing
- activate_membership_program
- pause_membership_program
- activate_split
- manage_external_push
- retry_external_push
- admin_override

audit_fields_minimum:
- actor_ref
- role_code
- scope_ref
- target_ref
- action_code
- result_code
- reason_note_or_null
- created_at

# ============================================================
# 10. FIXED PERMISSION STATEMENT
# ============================================================

fixed_statement:
- StreamStudio permissions are scope-based, not role-only.
- High-risk actions require both role allow and scope allow.
- Commerce, membership, publish, and split actions remain separately governable.
- Audit reconstruction is mandatory for all approval, release, commerce, and override actions.
