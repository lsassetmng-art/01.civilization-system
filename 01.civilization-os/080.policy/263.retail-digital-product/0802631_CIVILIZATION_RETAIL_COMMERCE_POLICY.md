# ============================================================
# CIVILIZATION RETAIL COMMERCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for retail commerce
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Retail commerce must remain:
- digital-only
- seller-aware
- rightsholder-aware
- distribution-right-aware
- entitlement-aware
- moderation-aware
- revenue-aware
- fail-closed on unresolved commerce chains


# ============================================================
# 2. DISTRIBUTION POLICY
# ============================================================

A seller may not sell another party's product
without valid distribution right.

This is mandatory.

Rightsholder truth, seller truth, and distribution right truth
must remain distinct.


# ============================================================
# 3. REVENUE POLICY
# ============================================================

Revenue distribution must remain explicit and auditable.

Gross amount, fees, seller share, rightsholder share,
and any agency/distribution fee must not be collapsed
into one hidden value.


# ============================================================
# 4. FINAL POLICY RULE
# ============================================================

Retail commerce policy in CivilizationOS must be:
- distribution-aware
- auditable
- entitlement-aware
- fail-closed
