# ============================================================
# AI OPERATION DESK INTEGRATION BOUNDARY OVERVIEW
# ============================================================

status: draft-fixed
app: AIOperationDesk
layer: integration
owner: Boss
prepared_by: Zero

integration_boundaries:
- ERP as formal caller
- Builder families as resident support callers
- supported apps as help / QA / request targets
- AiworkerOS as worker truth owner
- BusinessOS as commercial / dispatch truth owner
- cx22073jw as AI-worker-only read view surface

write_boundary:
- command row
- draft row
- staging row
- official intake table
- controlled function

forbidden_write_boundary:
- unrestricted canonical internal write
- auditless write
- approval-bypass finalization
