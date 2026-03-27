# ============================================================
# CIVILIZATION NATION LISTING AND ZONING POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for nation listing style and zoning
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Nation listing style and zoning must remain nation-configurable
and explicit.


# ============================================================
# 2. LISTING POLICY
# ============================================================

Listing must not be immediate.
It must require configured threshold satisfaction
and explicit review/approval.

Company types that are ineligible for listing
must remain explicitly ineligible.


# ============================================================
# 3. ZONING POLICY
# ============================================================

Opening is allowed only in nation-configured allowed zones.
No prior nation application is required.
Compatibility check is mandatory.
Nation notification after opening remains mandatory.


# ============================================================
# 4. FAIL-CLOSED POLICY
# ============================================================

The system must fail closed if:
- listing style or market-tier rules are unresolved
- listing eligibility is unresolved
- zone compatibility is unresolved
- restriction evaluation is unresolved


# ============================================================
# 5. FINAL POLICY RULE
# ============================================================

Nation listing and zoning policy in CivilizationOS must be:
- nation-configurable
- threshold-aware
- zone-aware
- compatibility-aware
- fail-closed
