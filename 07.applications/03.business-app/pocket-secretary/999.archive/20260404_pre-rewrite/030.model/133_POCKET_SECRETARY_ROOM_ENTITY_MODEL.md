# ============================================================
# POCKET SECRETARY ROOM ENTITY MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: room-entity-model
owner: Boss
prepared_by: Zero
version: 1.0


# PURPOSE

Defines Room database entities.


# ENTITY LIST

ScheduleEntity

TodoEntity

NoteEntity

ArchiveEntity

SecretaryEntity

SettingsEntity


# SCHEDULE ENTITY

id
title
start_time
end_time
location
memo
created_at
updated_at


# TODO ENTITY

id
title
completed
deadline
created_at


# NOTE ENTITY

id
title
content
created_at


# ARCHIVE ENTITY

id
file_path
file_type
created_at


# SECRETARY ENTITY

id
persona_id
name
active_flag


# SETTINGS ENTITY

id
setting_key
setting_value
