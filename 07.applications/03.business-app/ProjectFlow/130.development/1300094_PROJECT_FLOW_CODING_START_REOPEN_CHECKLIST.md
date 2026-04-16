# ============================================================
# PROJECT FLOW CODING START REOPEN CHECKLIST
# ============================================================

status: canonical
layer: development
application: ProjectFlow
owner: Boss
prepared_by: Zero

checklist:
- paused or blocked reason is explicitly identified
- upstream outputs are rechecked before reopen
- boundary-aware packages rerun boundary check when needed
- unresolved blocked conditions do not silently reopen packages
- reopened package updates execution record explicitly
