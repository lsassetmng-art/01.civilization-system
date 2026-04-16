# ============================================================
# STREAM STUDIO COLLABORATOR MANAGER EXACT
# ============================================================

status: draft
layer: screen-and-stateflow-exact
system: applications
application: StreamStudio
screen: collaborator_manager
owner: Boss
prepared_by: Zero

purpose:
Defines the exact design of the Collaborator Manager.

screen_goal:
Manage project members, roles, authority scopes, and assignments.

main_sections:
- member_list
- invitation_list
- role_template_list
- assignment_scope_panel
- due_control_panel
- exception_panel

member_list_fields:
- member_name
- role_code
- permission_profile_ref
- assignment_scope_summary
- due_at
- status
- joined_at

invitation_list_fields:
- invited_target
- proposed_role
- invitation_status
- sent_at
- expires_at

role_templates:
- creator
- collaborator
- producer
- admin
- custom_template_reserved

actions:
- invite_member
- resend_invitation
- revoke_invitation
- change_role
- update_scope
- set_due_date
- remove_member_if_allowed
- create_exception_rule

scope_dimensions:
- workspace_scope
- project_scope
- asset_scope
- publish_scope
- split_scope

permission_actions:
- view
- upload_asset
- edit_metadata
- manage_thumbnail
- manage_subtitle
- comment
- request_revision
- request_approval
- approve
- publish
- manage_external_push
- manage_split
- manage_fixed_fee
- admin_override

conflict_rules:
- cannot remove sole_required_owner_without_transfer
- cannot grant_admin_override_without_admin_role
- cannot grant_publish_if_policy_disallows_role
- cannot grant_split_management_without_visibility_to_split_scope

mobile_policy:
- member list simplified
- exception editing discouraged on mobile
- invite and approve actions remain available
