# ============================================================
# CIVILIZATION REAL ESTATE EXTENDED RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for tax, inheritance, transfer, auction,
finance, and housing screening inside CivilizationOS.

All behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE RUNTIME DOMAINS
# ============================================================

The extended runtime must evaluate:
- tax assessability
- tax default and enforcement
- transfer legality
- inheritance legality
- auction legality
- loan/mortgage legality
- persona rent affordability
- persona mortgage affordability


# ============================================================
# 2. TAX EVALUATION
# ============================================================

Runtime must resolve:
- tax event type
- taxable object and right
- taxable subject
- nation tax rules
- tax base
- exemptions
- penalties

Fail closed when mandatory tax rule is unresolved.


# ============================================================
# 3. INHERITANCE / TRANSFER EVALUATION
# ============================================================

Runtime must resolve:
- transfer type
- right transferability
- heir or recipient eligibility
- approval requirements
- partition/waiver legality
- registry finalization condition

Fail closed when rule chain is incomplete.


# ============================================================
# 4. AUCTION / ENFORCEMENT EVALUATION
# ============================================================

Runtime must resolve:
- trigger legality
- seizure legality
- bidder eligibility
- minimum bid rule
- distribution order
- residence protection if any

Fail closed when enforcement rule is unresolved.


# ============================================================
# 5. FINANCE / MORTGAGE EVALUATION
# ============================================================

Runtime must resolve:
- whether the right is financeable
- collateral eligible value
- max LTV
- max DTI
- guarantor need
- registration requirement
- default recovery legality

Fail closed when finance rules are unresolved.


# ============================================================
# 6. PERSONA SCREENING EVALUATION
# ============================================================

Runtime must resolve:
- income profile
- expense profile
- asset profile
- liability profile
- credit profile
- guarantee profile where relevant
- nation screening thresholds

Rent screening and mortgage screening must remain distinct.


# ============================================================
# 7. FINAL RUNTIME RULE
# ============================================================

CivilizationOS extended real-estate runtime must be:
- explicit
- nation-governed
- DB-controlled
- fail-closed on missing rules
