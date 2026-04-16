# ============================================================
# HISTORY SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for history screen.

screen_role:
The history screen shows important state-changing events
for the working object.

main_sections:
- top app bar
- event filter row
- timeline list
- event detail drawer or panel
- state legend

event_groups:
- draft events
- action events
- proposal events
- profit preview events
- approval events
- handoff events
- sync events

actions:
- filter by event type
- open source object context
- open related detail screen

state_groups:
- empty
- filtered empty
- content

basic_pro_difference:
Basic:
- local history focused

Pro:
- adds approval / handoff / sync events
