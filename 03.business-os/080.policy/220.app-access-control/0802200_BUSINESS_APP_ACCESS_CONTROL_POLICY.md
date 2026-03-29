# ============================================================
# BUSINESS APP ACCESS CONTROL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for app access control in BusinessOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

BusinessOS must treat:
- user-scoped data ownership
- app-declared requested scope
- user-granted actual scope
- runtime API enforcement

as distinct concepts.


# ============================================================
# 2. USER OWNERSHIP POLICY
# ============================================================

User ownership of BusinessOS data
does not grant automatic full app access.

All app access must still be evaluated
through OS API control.


# ============================================================
# 3. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if:
- requested scope is unresolved
- user grant is unresolved
- system policy is unresolved
- effective access cannot be computed


# ============================================================
# 4. FINAL POLICY RULE
# ============================================================

BusinessOS app access control policy must be:
- user-scoped in ownership
- app-scoped in request
- user-grant-aware in permission
- API-controlled in enforcement
- fail-closed
