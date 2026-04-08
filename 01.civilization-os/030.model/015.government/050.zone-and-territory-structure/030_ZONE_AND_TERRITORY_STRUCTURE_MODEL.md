# ============================================================
# ZONE AND TERRITORY STRUCTURE
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for zone and territory structures.

# 2. CORE ENTITIES

- territory_unit
- zone_definition
- territorial_boundary
- territorial_status

# 3. STATE MODEL

territory_unit:
- territory_unit_id
- territory_type_code
- parent_territory_id
- territory_scope
- territory_status

zone_definition:
- zone_definition_id
- territory_unit_id
- zone_type_code
- zone_rule_code
- zone_status

territorial_boundary:
- territorial_boundary_id
- territory_unit_id
- boundary_type_code
- boundary_ref
- boundary_status

territorial_status:
- territorial_status_id
- territory_unit_id
- governance_status
- dispute_status
- changed_at

# 4. INTEGRITY RULES

- zone must belong to one territory unit
- boundary must preserve territory identity
- territory hierarchy must be explicit
- unresolved territorial ambiguity is prohibited

