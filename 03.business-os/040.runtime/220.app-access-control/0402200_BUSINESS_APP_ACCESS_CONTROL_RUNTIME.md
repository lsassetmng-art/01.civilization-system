# ============================================================
# BUSINESS APP ACCESS CONTROL RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for app access control in BusinessOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- whether requested scope exists
- whether user grant exists and is active
- whether system policy allows the action
- whether sensitive action reconfirmation is required
- whether effective access is allowed


# ============================================================
# 2. EFFECTIVE ACCESS RULE
# ============================================================

The runtime must determine effective access as:

app_requested_scope
AND
user_granted_scope
AND
system_policy

This is mandatory.


# ============================================================
# 3. SENSITIVE ACTION RULE
# ============================================================

If grant_mode is ask_each_time,
runtime must require explicit confirmation
before the action proceeds.


# ============================================================
# 4. FAIL-CLOSED RULE
# ============================================================

The runtime must fail closed if:
- requested scope is missing
- granted scope is missing where required
- system policy is unresolved
- effective access cannot be computed


# ============================================================
# 5. FINAL RUNTIME RULE
# ============================================================

BusinessOS app access runtime must be:
- scope-aware
- user-grant-aware
- API-enforced
- fail-closed
