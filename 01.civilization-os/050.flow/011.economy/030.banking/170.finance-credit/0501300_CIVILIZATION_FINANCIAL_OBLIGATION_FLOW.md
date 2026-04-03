# ============================================================
# CIVILIZATION FINANCIAL OBLIGATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the generic financial obligation flow of CivilizationOS.

This flow supports cross-domain payable/receivable handling.

It is not the detailed loan or mortgage flow.
Those belong to:
- 262.banking
- 260.real-estate-regime


# ============================================================
# 1. PRIMARY FLOW
# ============================================================

source event
-> financial obligation created
-> due rule resolved
-> payment or disbursement processed
-> outstanding updated
-> closed / disputed / defaulted as applicable


# ============================================================
# 2. FINAL RULE
# ============================================================

This flow is generic and supportive only.

Detailed banking and real-estate finance flows remain specialized.
