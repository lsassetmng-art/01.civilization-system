# ============================================================
# CIVILIZATION REAL ESTATE EXTENDED FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define flow for tax, inheritance, transfer, auction,
finance, and housing screening inside CivilizationOS.


# ============================================================
# 1. TAX FLOW
# ============================================================

taxable event
-> assessment
-> billing
-> payment or non-payment
-> default if unresolved
-> enforcement where lawful


# ============================================================
# 2. INHERITANCE / TRANSFER FLOW
# ============================================================

transfer/inheritance trigger
-> recipient/heir screening
-> rule evaluation
-> approval where required
-> tax where applicable
-> registry update
-> finality


# ============================================================
# 3. AUCTION FLOW
# ============================================================

default or enforcement trigger
-> seizure
-> auction case open
-> bidder screening
-> bidding
-> winning result
-> distribution
-> registry update


# ============================================================
# 4. FINANCE FLOW
# ============================================================

loan application
-> collateral evaluation
-> borrower screening
-> rule evaluation
-> approval or rejection
-> contract
-> mortgage registration
-> repayment
-> default recovery if needed


# ============================================================
# 5. RENTAL SCREENING FLOW
# ============================================================

rental candidate
-> income and credit screening
-> guarantee screening
-> affordability screening
-> approval or rejection
-> rent contract


# ============================================================
# 6. MORTGAGE SCREENING FLOW
# ============================================================

housing purchase intent
-> income and credit screening
-> asset/liability screening
-> collateral evaluation
-> LTV/DTI evaluation
-> approval or rejection
-> loan contract


# ============================================================
# 7. FINAL FLOW RULE
# ============================================================

CivilizationOS extended real-estate flow must remain:
- staged
- explicit
- registry-aware
- nation-governed
