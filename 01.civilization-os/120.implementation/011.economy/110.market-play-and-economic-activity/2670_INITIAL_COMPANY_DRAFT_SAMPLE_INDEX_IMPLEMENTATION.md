# ============================================================
# INITIAL COMPANY DRAFT SAMPLE INDEX
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical mapping/binding persistence for INITIAL COMPANY DRAFT SAMPLE INDEX.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- company_builder_mapping

# 4. COMMON COLUMN GROUPS

Applied groups:
- identity columns
- lifecycle columns
- audit columns

# 5. COLUMNS

Common columns:
- id
- status
- version
- created_at
- updated_at

Domain columns:
- mapping_group_code
- source_ref
- target_ref
- source_type
- target_type
- binding_type
- display_order
- reason_code
- enabled_flag
- country_scope
- ui_surface_code

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:
- (mapping_group_code, source_ref, target_ref, binding_type)

Indexes:
- idx_company_builder_mapping_group
- idx_company_builder_mapping_source
- idx_company_builder_mapping_target
- idx_company_builder_mapping_binding_type
- idx_company_builder_mapping_display_order
- idx_company_builder_mapping_country_scope

Checks:
- display_order >= 0

# 7. SOURCE OF TRUTH

Authoritative mapping/binding table for UI, model, and sellable-scope resolution.

# 8. FAILURE HANDLING

Fail closed on:
- invalid source/target relation
- duplicate active mapping
- undefined ui surface or binding type
