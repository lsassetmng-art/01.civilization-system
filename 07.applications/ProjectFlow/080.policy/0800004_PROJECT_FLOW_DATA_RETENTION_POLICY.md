# ============================================================
# PROJECT FLOW DATA RETENTION POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

retention_targets:
- project snapshots
- sync requests
- sync logs
- issue history
- risk history
- time entry history

rules:
- archival is preferred over destructive delete
