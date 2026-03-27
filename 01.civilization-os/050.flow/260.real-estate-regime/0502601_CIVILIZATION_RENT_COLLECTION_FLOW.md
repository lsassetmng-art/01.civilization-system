# ============================================================
# CIVILIZATION RENT COLLECTION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official rent collection flow of CivilizationOS.


# ============================================================
# 1. PRIMARY FLOW
# ============================================================

Rent flow:

rent_contract activation
-> billing period opens
-> billed amount is created
-> payment is due in nation currency
-> payment received or not received
-> late/default handling where applicable
-> next billing period

This flow is entirely inside Civilization.


# ============================================================
# 2. BILLING FLOW
# ============================================================

- active rent contract is identified
- billing period is resolved
- billed amount is generated
- rent currency is set to property nation currency
- collection record is opened


# ============================================================
# 3. PAYMENT FLOW
# ============================================================

- tenant pays billed amount
- collection record is updated
- paid / partial / overdue state is determined
- late fee is applied if policy requires


# ============================================================
# 4. DEFAULT FLOW
# ============================================================

If payment is not satisfied:
- default record may be created
- freeze or enforcement effect may apply
- occupancy consequences may be triggered where allowed

No ERP involvement exists.


# ============================================================
# 5. COMPANY PREMISES FLOW
# ============================================================

If a Civilization company is tenant or landlord:
- rent contract still follows the same flow
- company remains a Civilization company
- no ERP path is introduced


# ============================================================
# 6. FINAL FLOW RULE
# ============================================================

Civilization rent collection must remain explicit and internal.

Core summary:

- rent billing and payment are staged
- property nation currency is mandatory
- company rent stays inside Civilization
- ERP is not involved
