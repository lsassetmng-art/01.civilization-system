# ============================================================
# PAYMENT RULE MASTER
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for PAYMENT RULE MASTER.

# 2. TABLE PROFILE

Primary profile:
- rule

# 3. PHYSICAL TABLE

Table:
- banking_payment_rule_master

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
- payment_method_type_code
- settlement_timing_code
- retry_rule_code
- processing_priority
- currency_scope_code
- effective_from
- effective_to

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_banking_payment_rule_master_method_type
- idx_banking_payment_rule_master_currency_scope
- idx_banking_payment_rule_master_effective_from
- idx_banking_payment_rule_master_effective_to
- idx_banking_payment_rule_master_enabled_flag

Checks:
- processing_priority >= 0
- effective_from < effective_to

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this banking concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid account / debtor / creditor / beneficiary linkage
- lifecycle ambiguity
- invalid financial amount, rate, or effective period semantics
