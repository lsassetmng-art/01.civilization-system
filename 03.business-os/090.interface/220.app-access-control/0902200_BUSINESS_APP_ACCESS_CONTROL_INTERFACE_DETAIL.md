# ============================================================
# BUSINESS APP ACCESS CONTROL INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for app access control in BusinessOS.


# ============================================================
# 1. APP REQUESTED SCOPE INTERFACE
# ============================================================

required_fields:
- app_id
- resource_domain
- action_type
- requested_scope_level
- sensitivity_level
- correlation_id


# ============================================================
# 2. USER GRANT INTERFACE
# ============================================================

required_fields:
- user_ref
- app_id
- resource_domain
- action_type
- grant_mode
- correlation_id


# ============================================================
# 3. EFFECTIVE ACCESS CHECK INTERFACE
# ============================================================

required_fields:
- user_ref
- app_id
- resource_domain
- action_type
- correlation_id


# ============================================================
# 4. OUTPUT RULE
# ============================================================

All outputs must distinguish:
- allowed
- denied
- ask_each_time
- blocked_by_policy
- unresolved_policy


# ============================================================
# 5. FINAL INTERFACE RULE
# ============================================================

BusinessOS app access interfaces must be:
- scope-aware
- user-grant-aware
- runtime-checkable
- API-compatible
