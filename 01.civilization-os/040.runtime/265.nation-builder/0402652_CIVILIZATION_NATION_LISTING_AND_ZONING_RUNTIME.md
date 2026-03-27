# ============================================================
# CIVILIZATION NATION LISTING AND ZONING RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for nation listing style and zoning
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- nation listing style validity
- market tier threshold validity
- company type listing eligibility
- company market-tier readiness
- zone existence and activity
- company/site type allowance by zone
- restriction rule satisfaction
- compatibility check results


# ============================================================
# 2. LISTING READINESS RULE
# ============================================================

The runtime must fail closed if:
- nation listing style is unresolved
- relevant market tier rules are unresolved
- listing eligibility for the company type is unresolved
- readiness thresholds cannot be computed safely


# ============================================================
# 3. ZONING COMPATIBILITY RULE
# ============================================================

The runtime must fail closed if:
- target zone is unresolved
- zone status is inactive or blocked
- company type allowance is unresolved
- site/store type allowance is unresolved
- required restriction checks are unresolved


# ============================================================
# 4. FINAL RUNTIME RULE
# ============================================================

Nation listing and zoning runtime must be:
- style-aware
- market-tier-aware
- eligibility-aware
- zone-aware
- restriction-aware
- fail-closed
