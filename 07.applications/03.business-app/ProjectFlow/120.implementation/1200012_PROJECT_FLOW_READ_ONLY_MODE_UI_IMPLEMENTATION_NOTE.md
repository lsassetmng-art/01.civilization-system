# ============================================================
# PROJECT FLOW READ ONLY MODE UI IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for read-only mode UI behavior.

ui_implementation_targets:
- read-only banner
- disabled action style
- blocked action explanation dialog or sheet
- subscription recovery entry point
- same behavior across smartphone and pc

behavior_rules:
- disabled actions should remain discoverable
- read-only state should be visible on major screens
- blocked-action explanation should be concise and consistent
