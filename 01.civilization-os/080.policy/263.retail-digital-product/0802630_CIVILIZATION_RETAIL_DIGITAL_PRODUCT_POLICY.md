# ============================================================
# CIVILIZATION RETAIL DIGITAL PRODUCT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for retail digital products
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Retail products must remain:
- digital-only
- Civilization-internal
- origin-aware
- entitlement-aware
- delegated correctly when another OS owns detailed access policy


# ============================================================
# 2. PRODUCT CATEGORY POLICY
# ============================================================

Allowed categories are limited to supported digital classes.

Real-world physical goods marketplace is not allowed.


# ============================================================
# 3. BUSINESSOS DELEGATION POLICY
# ============================================================

If a product is BusinessOS-linked,
CivilizationOS must not duplicate BusinessOS
as the source of truth for:
- user-scoped DB ownership rules
- app requested scope rules
- user granted scope rules
- effective access decision rules
- OS API enforcement rules

CivilizationOS may only reference that such policy
is delegated to BusinessOS.


# ============================================================
# 4. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if:
- product interpretation is unresolved
- integration mode is unresolved
- delegated policy target is unresolved
- entitlement/license state is unresolved


# ============================================================
# 5. FINAL POLICY RULE
# ============================================================

Retail digital product policy in CivilizationOS must be:
- digital-only
- integration-aware
- delegation-aware
- fail-closed
