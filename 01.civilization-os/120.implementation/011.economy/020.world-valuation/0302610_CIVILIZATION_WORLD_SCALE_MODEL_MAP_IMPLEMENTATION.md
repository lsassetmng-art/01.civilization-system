# ============================================================
# CIVILIZATION WORLD SCALE MODEL MAP
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION WORLD SCALE MODEL MAP.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- world_scale_model_mapping

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns
- lifecycle columns

Additional groups:
- trace columns
- period columns
- workflow columns
  - only where applicable

# 5. COLUMNS

- id
- status
- version
- created_at
- updated_at
- mapping_group_code
- source_ref
- target_ref
- binding_type
- display_order
- enabled_flag
- scope_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- none beyond PK at this layer unless explicitly promoted later

FK:
- soft reference by canonical id/code unless same-domain lifecycle ownership is proven stable

Indexes:
- idx_world_scale_model_mapping_group
- idx_world_scale_model_mapping_source
- idx_world_scale_model_mapping_target
- idx_world_scale_model_mapping_display_order
- idx_world_scale_model_mapping_scope_code

Checks:
- display_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this economy concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid linkage
- lifecycle ambiguity
- invalid amount/rate/value semantics
