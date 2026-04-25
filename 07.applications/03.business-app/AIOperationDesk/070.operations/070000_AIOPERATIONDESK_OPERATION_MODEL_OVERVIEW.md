# ============================================================
# AI OPERATION DESK OPERATION MODEL OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: operations
owner: Boss
prepared_by: Zero

operation_modes:
- consult
- draft
- execution bridge
- queue control
- retry control
- audit support
- summary support

erp_lane_model:
- consult lane
- draft lane
- execution lane

notification_events:
- review pending
- approval pending
- confirmation required
- execution failed
- retry scheduled
- completed with warning
- completed summary available
