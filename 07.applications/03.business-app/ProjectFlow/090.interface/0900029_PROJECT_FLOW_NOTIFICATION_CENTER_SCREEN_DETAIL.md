# ============================================================
# PROJECT FLOW NOTIFICATION CENTER SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
notification_center

purpose:
Shows automation-driven and system-driven operational notifications.

main_components:
- notification list
- filter chips
- priority or severity indicator
- source entity link
- acknowledgment marker

filters:
- unread only
- overdue related
- risk related
- sync related
- report review related

notification_item_fields:
- notification_type
- title
- summary
- created_at
- source_entity_type
- source_entity_id
- acknowledged_state

actions:
- open source detail
- mark acknowledged
- filter notifications

ui_rules:
- high urgency items must be visually stronger
- source detail opening must be one step away
