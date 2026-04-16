# ============================================================
# MULTICURRENCY DISPLAY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency display requirements.

ui_targets:
- forecast amounts
- proposal amounts
- profit preview amounts
- internal explanation amounts
- currency basis labels
- rate snapshot reference

ui_rule:
The user must be able to distinguish:
- source currency
- base currency
- display currency
