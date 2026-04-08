# ============================================================
# PERSONA PLACEMENT
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona placement in world or system context.

# 2. CORE ENTITIES

- persona_placement
- placement_scope
- placement_status
- placement_constraint

# 3. STATE MODEL

persona_placement:
- placement_id
- persona_id
- target_scope
- placement_type_code
- placement_status

placement_scope:
- scope_id
- scope_type_code
- world_ref
- region_ref
- facility_ref

placement_status:
- status_id
- placement_id
- active_flag
- effective_from
- effective_to

placement_constraint:
- constraint_id
- placement_id
- constraint_type_code
- constraint_value
- constraint_status

# 4. INTEGRITY RULES

- one active placement per placement type and scope window
- placement scope must be explicit
- placement constraint must bind to one placement
- overlapping incompatible placements are prohibited

