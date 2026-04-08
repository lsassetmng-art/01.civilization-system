# ============================================================
# MARKET ROLE TYPE ENUM MASTER
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical enum/master persistence for MARKET ROLE TYPE ENUM MASTER
used by company builder, marketplace, and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- master

# 3. PHYSICAL TABLE

Table:
- company_builder_enum_master

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- audit columns

# 5. COLUMNS

Common columns:
- id
- code
- name
- enabled_flag
- version
- created_at
- updated_at

Domain columns:
- enum_group_code
- enum_value_code
- sort_order
- description
- parent_code
- category_code
- country_scope
- builder_phase_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- (enum_group_code, enum_value_code)

Indexes:
- idx_company_builder_enum_master_group
- idx_company_builder_enum_master_enabled
- idx_company_builder_enum_master_sort_order
- idx_company_builder_enum_master_country_scope
- idx_company_builder_enum_master_builder_phase

Checks:
- sort_order >= 0

# 7. SOURCE OF TRUTH

Authoritative enum/master table for builder-selectable values.

# 8. FAILURE HANDLING

Fail closed on:
- duplicate enum value in same group
- invalid parent_code chain
- invalid builder phase scope
