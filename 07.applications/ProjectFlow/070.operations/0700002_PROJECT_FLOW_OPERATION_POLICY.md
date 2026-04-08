# ============================================================
# PROJECT FLOW OPERATION POLICY
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

policies:
- initial import should be operator-controlled
- destructive bulk update requires explicit confirmation
- sync scheduling must be documented
- failed sync backlog must be visible
