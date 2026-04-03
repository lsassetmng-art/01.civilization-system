# ============================================================
# CIVILIZATION INSURANCE AND RELIEF FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define flow for insurance, subsidy, and relief handling
inside CivilizationOS.


# ============================================================
# 1. INSURANCE FLOW
# ============================================================

insured event
-> claim submission
-> review
-> approval or rejection
-> payout obligation
-> payment completion


# ============================================================
# 2. SUBSIDY / RELIEF FLOW
# ============================================================

program trigger
-> eligibility screening
-> allocation approval
-> disbursement obligation
-> payment completion
-> closure / dispute where applicable


# ============================================================
# 3. FINAL RULE
# ============================================================

Insurance, subsidy, and relief remain valid generic finance-credit domains,
distinct from banking loan products.
