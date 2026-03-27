# ============================================================
# CIVILIZATION COMPANY UI RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for company UI list/discovery,
analytics, evaluation, and listing-readiness
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- company public visibility
- company category/list visibility
- analytics snapshot readiness
- initial evaluation creation
- current evaluation refresh
- listing-readiness computation
- listing application eligibility


# ============================================================
# 2. INITIAL EVALUATION RULE
# ============================================================

At or immediately after company creation,
the system should create initial evaluation state.

Fail closed if required baseline evaluation inputs
cannot be resolved.


# ============================================================
# 3. LISTING-READINESS RULE
# ============================================================

Listing-readiness must not be treated as automatic.

The runtime must verify:
- readiness threshold inputs
- current evaluation state
- required compliance state
- required maturity/activity signals where modeled

Fail closed on unresolved readiness state.


# ============================================================
# 4. FINAL RUNTIME RULE
# ============================================================

Company UI runtime must be:
- visibility-aware
- analytics-aware
- evaluation-aware
- listing-readiness-aware
- fail-closed
