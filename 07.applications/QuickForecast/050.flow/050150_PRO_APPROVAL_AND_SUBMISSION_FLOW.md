# ============================================================
# PRO APPROVAL AND SUBMISSION FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only approval and submission flow.

flow_steps:
1. user selects a share / approval / submission target
2. policy-required checks are executed
3. approval request is created when required
4. approval result is received
5. submission payload is prepared
6. governed submission is executed
7. result is recorded in history and state

rules:
- Basic cannot execute enterprise submission
- required approval must be enforced
- failed submission must not be shown as accepted
