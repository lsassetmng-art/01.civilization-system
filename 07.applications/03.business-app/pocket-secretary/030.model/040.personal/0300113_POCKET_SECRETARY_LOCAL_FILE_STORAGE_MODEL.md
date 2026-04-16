# ============================================================
# POCKET SECRETARY LOCAL FILE STORAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents local file references used by PocketSecretary.

fields:
- local_file_id
- user_id
- storage_scope
- file_path_reference
- mime_type
- logical_category
- retention_status
- created_at
- updated_at

rules:
- file metadata and actual content handling must be separable
- retention status must be explicit
- local file reference must not imply external publication
