# WORLD ID MODEL

status: canonical
layer: model
domain: foundation

## PURPOSE
Canonical identifier for a world instance.

## FIELDS
- world_id
- world_code
- world_name
- created_at
- status

## RULES
- world_id is immutable
- world_code must be unique
