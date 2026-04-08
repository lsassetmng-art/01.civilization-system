# ============================================================
# WORLD MODEL
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical top-level world model.

# 2. CORE ENTITIES

- world
- world_region
- world_timeframe
- world_status

# 3. STATE MODEL

world:
- world_id
- world_code
- world_name
- world_version
- world_status_code

world_region:
- region_id
- world_id
- region_type_code
- parent_region_id
- region_status

world_timeframe:
- timeframe_id
- world_id
- logical_time
- tick_position
- phase_code

world_status:
- status_id
- world_id
- stability_code
- visibility_code
- changed_at

# 4. INTEGRITY RULES

- every region belongs to one world
- one active timeframe per world
- world status must be explicit
- logical time must be attributable to one world

