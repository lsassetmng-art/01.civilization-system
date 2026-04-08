# ============================================================
# FORECAST DETAIL SCREEN SKELETON INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Android screen skeleton for forecast detail.

screen_role:
The forecast detail screen is the compact summary hub
for a single working object.

main_sections:
- top app bar
- header summary card
- signal summary section
- scenario summary section
- action summary section
- proposal summary section
- profit preview summary section
- history shortcut area
- Pro operation panel

summary_fields:
- title
- scope summary
- selected scenario
- updated time
- draft / sync / approval / handoff states

actions:
- edit forecast
- open action board
- open proposal builder
- open profit preview
- open history
- open Pro approval / handoff

state_groups:
- loading
- content
- no linked action yet
- no proposal yet
- no profit preview yet
- Pro operation visible

basic_pro_difference:
Basic:
- no governed operation panel

Pro:
- approval / share / handoff entry visible
