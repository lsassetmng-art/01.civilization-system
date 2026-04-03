# ============================================================
# CIVILIZATION RETAIL COMMERCE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow of retail commerce
inside CivilizationOS.


# ============================================================
# 1. THIRD-PARTY DISTRIBUTION FLOW
# ============================================================

product rightsholder exists
-> seller obtains distribution right
-> listing draft created by seller
-> moderation / approval
-> publication
-> purchase
-> entitlement grant
-> revenue allocation to seller and rightsholder(s)


# ============================================================
# 2. SELF-SALE FLOW
# ============================================================

rightsholder equals seller
-> listing
-> purchase
-> entitlement grant
-> revenue allocation


# ============================================================
# 3. AGENCY SALE FLOW
# ============================================================

rightsholder authorizes seller as agent
-> listing by seller
-> purchase
-> entitlement grant
-> agency/distribution fee allocation
-> remainder to rightsholder


# ============================================================
# 4. REFUND / REVOKE FLOW
# ============================================================

refund request or revoke trigger
-> eligibility review
-> refund result and/or entitlement revoke
-> revenue adjustment
-> final post-refund state


# ============================================================
# 5. FINAL FLOW RULE
# ============================================================

Retail commerce flow must remain:
- seller-aware
- rightsholder-aware
- distribution-aware
- entitlement-aware
- revenue-aware
