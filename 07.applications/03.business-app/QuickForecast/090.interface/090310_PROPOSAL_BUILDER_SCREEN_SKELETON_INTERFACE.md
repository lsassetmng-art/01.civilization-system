# ============================================================
# PROPOSAL BUILDER SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for proposal draft builder.

screen_role:
The proposal builder transforms selected actions into editable proposal text.

main_sections:
- top app bar
- source context summary
- draft type selector
- section editor area
- regeneration controls
- bottom action area

draft_sections:
- title
- executive summary
- problem statement
- opportunity statement
- recommended action
- expected business effect
- free draft body

actions:
- generate draft
- regenerate section
- save
- continue to profit
- share/request approval (Pro)
- back to action board

state_groups:
- empty draft
- generated draft
- user edited draft
- regeneration pending
- validation warning

basic_pro_difference:
Basic:
- local save only

Pro:
- share / approval entry visible
