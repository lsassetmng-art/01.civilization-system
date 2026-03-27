# ============================================================
# CIVILIZATION REAL ESTATE FINANCE AND MORTGAGE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official finance and mortgage architecture
for real estate inside CivilizationOS.

This architecture covers:
- collateral-backed loans
- mortgage registration
- nation-currency lending
- loan evaluation
- LTV/DTI-style screening
- default and recovery

All finance behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Real-estate finance must distinguish:
- property market value
- collateral eligible value
- loan amount
- repayment capacity
- mortgage/legal enforceability

Loan behavior is common in structure,
but nation-specific in legal and financial controls.


# ============================================================
# 2. LOAN CURRENCY RULE
# ============================================================

Default principle:
loan currency must be the nation currency
of the property or lending domain as defined by nation rules.

This behavior must be DB-controlled per nation.


# ============================================================
# 3. DB CONTROL RULE
# ============================================================

The following must be DB-controlled:
- whether mortgage is allowed on a right_type
- whether loan-on-lease is allowed
- collateral haircut rules
- LTV cap
- DTI cap
- borrower eligibility
- guarantor requirements
- mortgage registration requirement
- default and recovery rule

Fail closed when required finance policy is missing.


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Real-estate finance in CivilizationOS must be:
- nation-currency-aware
- collateral-aware
- screening-aware
- DB-controlled
- legally distinct from market valuation
