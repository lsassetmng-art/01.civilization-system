# ============================================================
# WORLD MAP
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world map structures.

# 2. CORE ENTITIES

- world_map
- map_region
- map_boundary_rule
- map_status

# 3. STATE MODEL

world_map:
- world_map_id
- world_definition_id
- map_scope
- map_type_code
- map_status

map_region:
- map_region_id
- world_map_id
- region_code
- region_scope
- region_status

map_boundary_rule:
- map_boundary_rule_id
- world_map_id
- rule_type_code
- rule_value
- rule_status

map_status:
- map_status_id
- world_map_id
- active_flag
- revised_flag
- changed_at

# 4. INTEGRITY RULES

- region and boundary rule must belong to one world map
- map scope must be explicit
- active and revised state must be explicit
- hidden world-map mutation is prohibited

