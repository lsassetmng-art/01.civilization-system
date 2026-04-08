# ============================================================
# MBO ERP TRANSFER FLOW
# ============================================================

status: canonical
application: Mbo
layer: flow
owner: Boss
prepared_by: Zero

steps:
- finalize evaluation
- confirm approver state
- build outbound payload
- transmit to ERP
- store transmission history
