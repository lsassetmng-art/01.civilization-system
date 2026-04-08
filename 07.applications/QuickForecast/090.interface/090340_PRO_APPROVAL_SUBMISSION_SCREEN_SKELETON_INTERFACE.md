# ============================================================
# PRO APPROVAL SUBMISSION SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for Pro approval / submission screen.

screen_role:
This screen manages governed Pro workflow transitions.

main_sections:
- top app bar
- source summary strip
- approval status card
- approver / target section
- handoff readiness section
- payload summary section
- result history strip
- bottom action area

state_groups:
- not requested
- approval pending
- approval approved
- approval rejected
- handoff ready
- handoff pending
- handoff accepted
- handoff rejected
- handoff failed

actions:
- request approval
- cancel approval request
- prepare handoff
- execute handoff
- retry handoff
- open history

basic_pro_difference:
Pro only.
Basic must not enter this screen.
