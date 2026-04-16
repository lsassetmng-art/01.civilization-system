# ============================================================
# QUICK FORECAST RUNBOOK
# ============================================================

status: canonical
layer: operations
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines core runbook guidance for QuickForecast operation.

runbook_topics:
- draft recovery
- sync retry handling
- approval delay handling
- submission failure handling
- local state preservation
- user-visible error handling

principles:
- preserve draft first
- show state explicitly
- never silently drop user work
- never present failed submission as accepted
