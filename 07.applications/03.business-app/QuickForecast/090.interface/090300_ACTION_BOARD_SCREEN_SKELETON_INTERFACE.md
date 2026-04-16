# ============================================================
# ACTION BOARD SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for action idea board.

screen_role:
The action board converts forecast meaning into possible business actions.

main_sections:
- top app bar
- forecast summary strip
- scenario context chip area
- action candidate list/grid
- selected action area
- bottom continue area

action_card_parts:
- action type
- action title
- expected effect summary
- timing hint
- channel / target hint
- selected state

actions:
- select action
- edit action
- add custom action
- continue to proposal
- back to editor

state_groups:
- no selected action
- suggested actions shown
- custom action added
- action validation warning

basic_pro_difference:
Basic and Pro share almost the same core UI.
