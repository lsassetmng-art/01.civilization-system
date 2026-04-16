# ============================================================
# FORECAST CREATION FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the forecast creation flow.

flow_steps:
1. user starts new draft
2. target object and period are selected
3. relevant signals are selected or entered
4. base forecast assumption is drafted
5. scenario variants are added if needed
6. forecast draft is locally saved
7. user proceeds to action stage or pauses work

notes:
The flow must support incomplete progress and later resume.
