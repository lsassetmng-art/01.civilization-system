# ============================================================
# PROJECT FLOW EDIT POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

edit_rules:
- ERP-owned fields are read-only by default
- local-owned fields are editable by role
- protected manual override requires audit trail
