# ============================================================
# UI ACTION PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: event-and-ui-foundation
component: ui-action-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PERMISSION FIELDS
# ============================================================

permission_fields:
- action_id
- action_scope
- visible_to_player
- visible_to_ai_assist
- executable_by_player
- executable_by_ai_assist
- auto_executable
- required_role
- required_authority
- required_age_or_status
- forbidden_conditions


# ============================================================
# 2. ACTION SCOPES
# ============================================================

action_scopes:
- life_event_ui
- work_ui
- governance_ui
- emergency_ui
- hidden_system_ui


# ============================================================
# 3. FINAL RULE
# ============================================================

The system must always distinguish
what the player may see,
what the player may do,
and what only the system may do.
