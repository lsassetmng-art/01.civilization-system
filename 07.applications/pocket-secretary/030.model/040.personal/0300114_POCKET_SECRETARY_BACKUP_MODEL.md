# ============================================================
# POCKET SECRETARY BACKUP MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded backup and restore metadata
for PocketSecretary local data continuity.

fields:
- backup_id
- backup_scope
- backup_status
- created_at
- completed_at
- restore_status
- restore_target_reference

rules:
- backup presence must not be confused with live state
- restore action must be explicit
- backup metadata must remain auditable
