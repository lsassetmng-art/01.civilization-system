# ============================================================
# POCKET SECRETARY DATA SCHEMA
# ============================================================

status: canonical
system: pocket-secretary
component: data-schema
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines the persistent local data schema
used by PocketSecretary.


# STORAGE MODEL

PocketSecretary uses local storage
as the primary data source.

Technologies

Room Database
Local File Storage


# ROOM TABLES

schedule

schedule_id
title
start_time
end_time
location
note
created_at
updated_at


todo

todo_id
title
status
priority
created_at
completed_at


notes

note_id
title
content
created_at
updated_at


secretary_profile

secretary_id
persona_id
display_name
active_flag
created_at


settings

setting_key
setting_value


archive_metadata

archive_id
file_name
file_type
file_path
created_at


# FILE STORAGE

Archive files are stored locally.

Supported formats

PDF
PNG
JPEG
CSV
TXT
XLSX


# DESIGN PRINCIPLE

All user data must remain locally accessible
without network connectivity.
