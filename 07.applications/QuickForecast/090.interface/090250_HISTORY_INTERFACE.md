# ============================================================
# HISTORY INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines history/audit-oriented screen or panel.

main_sections:
- timeline list
- filter by event type
- actor summary
- event detail
- approval events
- submission / handoff events

requirements:
- history must be compact on mobile
- critical events must remain distinguishable
- accepted / rejected / failed must be separately visible
