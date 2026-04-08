# ============================================================
# INITIAL COMPANY DRAFT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for INITIAL COMPANY DRAFT
within company-builder and market-play flows.

# 2. TABLE PROFILE

Primary profile:
- workflow

# 3. PHYSICAL TABLE

Table:
- company_builder_draft

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
- workflow_status
- created_at
- updated_at
- owner_ref
- company_type_code
- draft_payload
- draft_version
- last_saved_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_builder_draft_owner_ref
- idx_company_builder_draft_company_type_code
- idx_company_builder_draft_last_saved_at

Checks:
- draft_version >= 1

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this company-builder concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid company linkage
- lifecycle ambiguity
- ownership or scope inconsistency
