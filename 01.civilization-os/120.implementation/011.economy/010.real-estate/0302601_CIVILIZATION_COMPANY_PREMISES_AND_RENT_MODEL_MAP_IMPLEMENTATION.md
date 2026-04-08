# ============================================================
# CIVILIZATION COMPANY PREMISES AND RENT MODEL MAP
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION COMPANY PREMISES AND RENT MODEL MAP.

# 2. TABLE PROFILE

Primary profile:
- bridge

# 3. PHYSICAL TABLE

Table:
- company_premises_rent_mapping

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
- company_ref
- premises_ref
- rent_mode_code
- binding_type
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_company_premises_rent_mapping_company_ref
- idx_company_premises_rent_mapping_premises_ref
- idx_company_premises_rent_mapping_effective_from
- idx_company_premises_rent_mapping_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this real-estate concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner / tenant / land / building linkage
- lifecycle ambiguity
- invalid valuation, occupancy, or lease semantics
