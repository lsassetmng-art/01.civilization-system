# ============================================================
# FORECAST LIST SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for forecast list.

screen_role:
The forecast list is the main inventory screen for drafts and work items.

main_sections:
- top app bar
- filter / search row
- tab or segmented list scope
- draft list
- empty state
- state legend area

list_tabs:
- my drafts
- recent
- shared (Pro)
- pending approval (Pro)
- pending handoff (Pro)

item_fields:
- title
- target summary
- selected scenario
- draft/update time
- draft/sync/approval/handoff states

actions:
- open detail
- open editor
- create new draft
- filter
- sort

state_groups:
- loading
- empty
- filtered empty
- populated
- failure surfaced in row state

basic_pro_difference:
Basic:
- my drafts / recent 중심

Pro:
- shared / approval / handoff tabs enabled
