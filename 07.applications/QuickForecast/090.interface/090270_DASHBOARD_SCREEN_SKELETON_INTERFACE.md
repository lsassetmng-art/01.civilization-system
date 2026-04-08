# ============================================================
# DASHBOARD SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for dashboard.

screen_role:
The dashboard is the resume-first home screen.

primary_goals:
- resume unfinished work
- surface pending work
- start new forecast quickly
- expose next useful action

main_sections:
- top app bar
- quick start actions
- recent drafts
- pending Pro work
- shortcuts to proposal / profit work
- state summary strip

state_groups:
- loading
- empty
- populated
- partial sync failure visible
- Pro pending visible

actions:
- create new draft
- open recent draft
- open pending approval/submission item
- go to forecast list
- go to settings

basic_pro_difference:
Basic:
- recent drafts
- quick start
- local-only state emphasis

Pro:
- adds pending approval
- adds pending handoff
- adds sync / failure visibility
