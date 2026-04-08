# ============================================================
# MANUFACTURING QUALITY AND MAINTENANCE POLICY
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for MANUFACTURING QUALITY AND MAINTENANCE POLICY.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- manufacturing_quality_maintenance_policy_rule

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
- line_type_code
- quality_mode_code
- maintenance_mode_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_manufacturing_quality_maintenance_policy_rule_line_type_code
- idx_manufacturing_quality_maintenance_policy_rule_quality_mode_code
- idx_manufacturing_quality_maintenance_policy_rule_effective_from
- idx_manufacturing_quality_maintenance_policy_rule_effective_to

Checks:
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this manufacturing concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid operator / facility / route / stock linkage
- lifecycle ambiguity
- invalid quantity, capacity, backlog, or maintenance semantics
