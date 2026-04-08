# ============================================================
# CIVILIZATION REPAYMENT SCHEDULE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the physical implementation design for CIVILIZATION REPAYMENT SCHEDULE.

# 2. TABLE PROFILE

Primary profile:
- transaction

# 3. PHYSICAL TABLE

Table:
- banking_repayment_schedule

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
- trace_id
- created_at
- updated_at
- contract_ref
- installment_no
- due_at
- due_amount
- currency_code
- settled_at

# 6. KEYS AND CONSTRAINTS

PK:
- id

Unique:

FK:

Indexes:
- idx_banking_repayment_schedule_contract_ref
- idx_banking_repayment_schedule_due_at
- idx_banking_repayment_schedule_installment_no
- idx_banking_repayment_schedule_status

Checks:
- installment_no >= 1
- due_amount >= 0

# 7. SOURCE OF TRUTH

Authoritative persistent row state for this banking concept.

# 8. FAILURE HANDLING

Fail closed on:
- invalid account / debtor / creditor / beneficiary linkage
- lifecycle ambiguity
- invalid financial amount, rate, or effective period semantics
