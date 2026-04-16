# ============================================================
# PROJECT FLOW NAVIGATION DESIGN NOTE
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines UI navigation structure and action placement policy.

navigation_structure:
- top entry dashboard
- project and task as two primary operational hubs
- sync/export/report as cross-cutting operational utilities
- settings for defaults and preference control

smartphone_navigation_policy:
- dashboard entry
- bottom or compact main navigation allowed
- detail screens may be stacked
- actions may be grouped into compact action menus
- same action set must remain available

pc_navigation_policy:
- dashboard entry
- side navigation or top navigation allowed
- denser list/table layout allowed
- detail and related list may appear together
- same action set must remain available

global_action_policy:
- export action should be reachable from list and detail screens
- report generation should be reachable from dashboard and project detail
- sync status should be reachable globally
- read-only mode should not hide blocked actions silently
