# ============================================================
# INVESTMENT INITIAL COMPANY DRAFT SAMPLE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for INVESTMENT INITIAL COMPANY DRAFT SAMPLE.

# 2. TABLE PROFILE

Primary profile:
- workflow

# 3. PHYSICAL TABLE

Table:
- company_builder_draft_sample

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
- sample_type_code
- company_type_code
- draft_payload
- country_scope
- enabled_flag

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_builder_draft_sample_sample_type_code
- idx_company_builder_draft_sample_company_type_code
- idx_company_builder_draft_sample_country_scope
- idx_company_builder_draft_sample_enabled_flag

Checks:
- sample_type_code <> ''

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this market-play / marketplace concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid actor / asset / company / jurisdiction linkage
- lifecycle ambiguity
- invalid economic, trade, or market semantics
