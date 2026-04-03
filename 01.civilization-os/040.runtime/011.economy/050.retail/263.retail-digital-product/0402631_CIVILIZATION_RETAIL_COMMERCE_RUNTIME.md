# ============================================================
# CIVILIZATION RETAIL COMMERCE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for retail commerce
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- seller eligibility
- rightsholder linkage validity
- distribution right validity
- listing publication eligibility
- active price resolution
- campaign compatibility
- purchase completion state
- entitlement grant legality
- refund / revoke legality
- review eligibility
- revenue allocation validity
- moderation effects


# ============================================================
# 2. DISTRIBUTION RIGHT RULE
# ============================================================

Runtime must verify:
- product rightsholder linkage is valid
- seller has valid distribution right
- distribution mode permits the active listing
- exclusivity rules are not violated

Fail closed if distribution authority is unresolved.


# ============================================================
# 3. PRICE RESOLUTION RULE
# ============================================================

Runtime must distinguish:
- base price
- sale-adjusted price
- coupon-adjusted price
- bundle-adjusted price
- final purchase price

Fail closed if final purchasable price cannot be resolved.


# ============================================================
# 4. PURCHASE / ENTITLEMENT RULE
# ============================================================

Runtime must verify:
- listing is purchasable
- seller distribution right is valid
- buyer is eligible
- final price is valid
- payment is completed
- entitlement rule allows grant

Entitlement must not be granted before lawful completion.


# ============================================================
# 5. REVENUE ALLOCATION RULE
# ============================================================

Runtime must verify:
- platform fee logic is valid
- seller share is valid
- rightsholder share is valid
- co-rightsholder share is valid where applicable
- agency/distribution fee role is valid where applicable

Fail closed if revenue allocation chain is unresolved.


# ============================================================
# 6. FINAL RUNTIME RULE
# ============================================================

Retail commerce runtime must be:
- seller-aware
- rightsholder-aware
- distribution-aware
- entitlement-aware
- moderation-aware
- revenue-aware
- fail-closed
