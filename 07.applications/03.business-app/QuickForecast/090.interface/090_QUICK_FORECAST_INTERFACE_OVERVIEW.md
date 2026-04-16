# ============================================================
# QUICK FORECAST INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the major user interface structure of QuickForecast.

core_ui_flow:
Forecast
-> Action
-> Proposal
-> Profit

screen_families:
- dashboard
- forecast list
- forecast editor
- scenario compare
- action idea board
- proposal draft builder
- profit preview
- approval / submission
- sync status
- settings

ui_principles:
- mobile first
- quick edit
- low friction
- interruption tolerance
- explicit state display
