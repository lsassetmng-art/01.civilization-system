# ============================================================
# ESSENTIAL CONSUMPTION SUBJECT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for ESSENTIAL CONSUMPTION SUBJECT.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- essential_consumption_subject_master

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
- code
- name
- enabled_flag
- version
- created_at
- updated_at
- subject_type_code
- scope_code
- priority_order

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_essential_consumption_subject_master_subject_type_code
- idx_essential_consumption_subject_master_scope_code
- idx_essential_consumption_subject_master_enabled_flag
- idx_essential_consumption_subject_master_priority_order

Checks:
- priority_order >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this essential-consumption / self-sufficiency concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid household / item / city / welfare linkage
- lifecycle ambiguity
- invalid quantity, shortage, ration, or welfare semantics
