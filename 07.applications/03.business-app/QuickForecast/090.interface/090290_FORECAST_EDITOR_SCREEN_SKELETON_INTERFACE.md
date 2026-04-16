# ============================================================
# FORECAST EDITOR SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for forecast editor.

screen_role:
The forecast editor creates and edits the forecasting base context.

main_sections:
- top app bar
- draft header card
- target scope section
- signal input section
- scenario switcher
- forecast result section
- bottom action area

field_groups:
- title / scope / period / grain
- public/general signals
- manual assumption
- Pro ERP reference signals
- demand direction / strength
- quantity / amount / confidence

actions:
- save draft
- duplicate scenario
- move to action board
- back to detail/list

state_groups:
- new draft
- editing existing
- validation warning visible
- local saved
- Pro reference loading

basic_pro_difference:
Basic:
- public/general signals only

Pro:
- ERP reference panels available
- permission failure may be surfaced inline
