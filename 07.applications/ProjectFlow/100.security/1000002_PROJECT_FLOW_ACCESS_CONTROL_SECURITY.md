# ============================================================
# PROJECT FLOW ACCESS CONTROL SECURITY
# ============================================================

status: canonical
layer: security
application: ProjectFlow
owner: Boss
prepared_by: Zero

rules:
- unauthorized export request is forbidden
- protected fields cannot be updated by standard members
- sync operator rights must be scoped
