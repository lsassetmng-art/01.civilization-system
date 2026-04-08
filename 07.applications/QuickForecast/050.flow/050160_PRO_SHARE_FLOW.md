# ============================================================
# PRO SHARE FLOW
# ============================================================

status: canonical
layer: flow
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only share flow.

flow_steps:
1. user selects target draft or forecast context
2. share target is selected
3. permission level is chosen
4. share validation is executed
5. share target record is created
6. recipient sees shared item in pending/shared list

rules:
- Basic cannot perform governed sharing
- share target identity must be explicit
- permission level must be explicit
