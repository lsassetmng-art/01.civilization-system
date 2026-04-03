# ============================================================
# CIVILIZATION COMPANY SITE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for company core/site/opening handling
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- company site creation eligibility
- property/unit availability
- occupancy validity
- site compatibility
- zone compatibility
- opening readiness
- nation notification readiness
- system real-estate-company mediation validity


# ============================================================
# 2. SITE COMPATIBILITY RULE
# ============================================================

Runtime must verify:
- company type and site type are compatible
- target property or unit exists
- occupancy mode is valid
- target property or unit is available

Fail closed on unresolved site compatibility.


# ============================================================
# 3. OPENING RULE
# ============================================================

Runtime must verify:
- target zone allows the requested opening
- occupancy basis is active
- company site is valid

No prior nation approval is required.

After opening becomes effective,
nation notification must be generated.


# ============================================================
# 4. PROPERTY TRANSACTION RULE
# ============================================================

Runtime must verify:
- transaction is mediated by the system real-estate company
- property/right compatibility is valid
- buyer/lessee/seller parties are valid
- listing/transaction chain is valid

Fail closed if direct unmediated execution is attempted.


# ============================================================
# 5. FINAL RUNTIME RULE
# ============================================================

Company site runtime must be:
- site-aware
- tenant-aware
- zone-aware
- notification-aware
- mediation-aware
- fail-closed
