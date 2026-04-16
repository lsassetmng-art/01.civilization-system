# ============================================================
# POCKET SECRETARY LIBRARY FILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents personal files stored in the Library domain.

fields:
- library_file_id
- user_id
- file_name
- file_type
- mime_type
- local_file_reference
- summary_text
- summary_status
- created_at
- updated_at

rules:
- library stores personal files such as PDF, image,
  and personal file materials
- registration and deletion remain explicit
- file existence and summary availability remain distinct
