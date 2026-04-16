# ============================================================
# SETTINGS SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for settings screen.

screen_role:
The settings screen manages local preferences,
tier visibility, and app-level configuration.

main_sections:
- top app bar
- account / tier section
- local draft behavior section
- display / editing preference section
- Pro connection section
- about / version section

setting_groups:
- current tier display
- draft autosave preference
- default screen preference
- state badge / compact mode preference
- Pro connection summary
- legal / version info

actions:
- update preference
- view tier status
- inspect connection status
- return to dashboard

basic_pro_difference:
Basic:
- local preference focused

Pro:
- connection and enterprise-linked summary visible
