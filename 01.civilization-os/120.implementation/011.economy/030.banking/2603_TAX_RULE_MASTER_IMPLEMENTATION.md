# ============================================================
# TAX RULE MASTER
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for TAX RULE MASTER.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- banking_tax_rule_master

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
- jurisdiction_ref
- tax_type_code
- rate_value
- withholding_mode_code
- rounding_rule_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_banking_tax_rule_master_jurisdiction_ref
- idx_banking_tax_rule_master_tax_type_code
- idx_banking_tax_rule_master_effective_from
- idx_banking_tax_rule_master_effective_to
- idx_banking_tax_rule_master_enabled_flag

Checks:
- rate_value >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this banking concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid account / debtor / creditor / beneficiary linkage
- lifecycle ambiguity
- invalid financial amount, rate, or effective period semantics
