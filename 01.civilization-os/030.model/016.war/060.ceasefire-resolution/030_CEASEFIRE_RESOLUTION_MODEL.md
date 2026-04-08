# ============================================================
# CEASEFIRE RESOLUTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for ceasefire and war resolution structures.

# 2. CORE ENTITIES

- ceasefire_resolution
- ceasefire_condition
- resolution_term
- ceasefire_status

# 3. STATE MODEL

ceasefire_resolution:
- ceasefire_resolution_id
- war_definition_id
- resolution_code
- resolution_scope
- resolution_status

ceasefire_condition:
- ceasefire_condition_id
- ceasefire_resolution_id
- condition_type_code
- condition_value
- condition_status

resolution_term:
- resolution_term_id
- ceasefire_resolution_id
- term_type_code
- term_value
- term_status

ceasefire_status:
- ceasefire_status_id
- ceasefire_resolution_id
- active_flag
- closed_flag
- changed_at

# 4. INTEGRITY RULES

- condition and term must belong to one ceasefire resolution
- resolution scope must be explicit
- active and closed state must be explicit
- hidden ceasefire-resolution mutation is prohibited

