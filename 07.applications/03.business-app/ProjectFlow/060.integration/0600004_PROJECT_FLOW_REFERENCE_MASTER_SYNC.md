# ============================================================
# PROJECT FLOW REFERENCE MASTER SYNC
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

reference_masters:
- customer master
- department master
- assignee reference
- project type master
- shared status master if needed

rules:
- reference sync should run before project intake when needed
- invalid reference must produce reviewable error
