# ============================================================
# ERP HANDOFF FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro ERP handoff flow.

flow_steps:
1. user selects handoff target
2. scenario and proposal context are fixed
3. submission readiness is validated
4. payload summary is generated
5. governed handoff is executed
6. handoff result is recorded
7. accepted / rejected / failed state becomes visible

rules:
- handoff is explicit
- handoff result is explicit
- local draft continuity remains even after failure
