# ============================================================
# POCKET SECRETARY DATA MODEL
# ============================================================

status: canonical
system: Civilization
application: PocketSecretary

owner: Boss
prepared_by: Zero



# DATABASE

SQLite

Recommended implementation

Android Room



# PERSONA INSTANCE

persona_instance

instance_id
persona_id
persona_name
installed_at
growth_state
active_flag



# SCHEDULE

schedule

schedule_id
title
description
start_time
end_time
location
reminder_flag
created_at



# TASK

task

task_id
title
description
status
priority
due_date
created_at



# NOTE

note

note_id
title
content
created_at
updated_at



# JOURNAL

journal

journal_id
entry_text
mood
created_at



# ASSET CACHE

asset_cache

asset_id
asset_type
asset_name
file_path
installed_at



# PURCHASE HISTORY

purchase_history

purchase_id
item_id
item_type
price
purchase_date



# TRANSIT HISTORY

transit_history

search_id
origin
destination
route_data
search_time



# EXPENSE RECORD

expense_record

expense_id
amount
route
date
submitted_flag



# SETTINGS

app_settings

setting_key
setting_value


# ============================================================
# PERSONA INSTANCE MODEL
# ============================================================

PocketSecretary loads installed personas
as Persona Instances.


persona_instance

instance_id
persona_id
owner_user_id
installed_at
version



# ============================================================
# PERSONA STATE
# ============================================================

Persona state represents growth values
maintained by PersonaOS.


examples

trust
discipline
curiosity
stability



# ============================================================
# SCENE DATA
# ============================================================

dashboard_scene

background_asset_id
persona_instance_id
effect_set



# ============================================================
# RENDER REQUEST MODEL
# ============================================================

render_request

scene_type
background_asset
persona_manifest
effect_manifest

