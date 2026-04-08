# ============================================================
# CIVILIZATION SECURITIES MODEL MAP
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION SECURITIES MODEL MAP.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- securities_model_mapping

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
- country_scope
- enabled_flag

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_securities_model_mapping_group
- idx_securities_model_mapping_source
- idx_securities_model_mapping_target
- idx_securities_model_mapping_binding_type
- idx_securities_model_mapping_display_order
- idx_securities_model_mapping_country_scope

Checks:
- display_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this securities concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid issuer / holder / instrument linkage
- lifecycle ambiguity
- invalid valuation, ownership, or settlement semantics
