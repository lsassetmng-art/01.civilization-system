# ============================================================
# SHARE TARGET SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for share target screen.

screen_role:
This screen manages who can see or assist with a Pro draft.

main_sections:
- top app bar
- target search area
- target type tabs or selector
- permission level section
- selected target preview
- current share list
- bottom action area

actions:
- search target
- select target
- select permission
- confirm share
- revoke share
- back to detail

state_groups:
- no target selected
- target selected
- share created
- share failed
- current shares visible

basic_pro_difference:
Pro only.
Basic must not enter this screen.
