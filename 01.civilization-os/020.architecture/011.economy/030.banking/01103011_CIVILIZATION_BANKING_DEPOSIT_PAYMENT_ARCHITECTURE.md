# ============================================================
# CIVILIZATION BANKING DEPOSIT PAYMENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define deposit, account, payment, and transfer architecture
inside CivilizationOS.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Deposits and payments must be account-and-ledger based.

The system must distinguish:
- customer-visible account
- internal bank ledger
- transfer instruction
- settlement completion
- freeze/hold state
- reversal/correction where lawful


# ============================================================
# 2. DEPOSIT TYPES
# ============================================================

Minimum deposit/account types:
- demand_deposit
- savings_deposit
- current_account
- settlement_account
- escrow_account
- reserve_account
- protected_deposit_account
- term_deposit

Availability and features are nation-governed.


# ============================================================
# 3. PAYMENT TYPES
# ============================================================

Minimum payment types:
- internal_transfer
- domestic_bank_transfer
- payroll_transfer
- tax_payment
- rent_payment
- merchant_payment
- scheduled_payment
- standing_order
- escrow_release
- refund_or_reversal where lawful

All fees, holds, and cutoffs are DB-controlled.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Deposits and payments must remain:
- ledger-backed
- status-explicit
- nation-currency-aware
- DB-controlled
