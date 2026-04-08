# ============================================================
# CONSTRUCTION PROJECT POLICY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CONSTRUCTION PROJECT POLICY.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- construction_project_policy_rule

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
- enabled_flag
- version
- created_at
- updated_at
- project_scope_code
- approval_mode_code
- contractor_rule_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_construction_project_policy_rule_scope_code
- idx_construction_project_policy_rule_approval_mode_code
- idx_construction_project_policy_rule_effective_from
- idx_construction_project_policy_rule_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this real-estate concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid owner / tenant / land / building linkage
- lifecycle ambiguity
- invalid valuation, occupancy, or lease semantics
