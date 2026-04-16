# ============================================================
# PROJECT FLOW ACTION AUTHORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines action-level authority and execution boundary guidance.

action_authority_categories:
- always_viewable
- locally_executable
- locally_executable_if_permitted
- blocked_in_read_only
- mediated_boundary_action
- review_required_before_external_use

architecture_rules:
- visibility and executability must be distinguished
- blocked actions may remain visible
- mediated boundary actions must remain separate from local actions
- external-use outputs require explicit review awareness
- device type must not change action authority
