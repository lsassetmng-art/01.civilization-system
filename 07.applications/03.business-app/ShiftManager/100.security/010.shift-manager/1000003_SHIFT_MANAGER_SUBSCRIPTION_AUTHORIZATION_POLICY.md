# ============================================================
# SHIFT MANAGER SUBSCRIPTION AUTHORIZATION POLICY
# ============================================================

status: design-extension
type: subscription-authorization-policy
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how site subscription state
interacts with authorization.

# ============================================================
# 2. AUTHORIZATION LAYERS
# ============================================================

authorization_layers:
1. site subscription state
2. role/operation authority
3. visibility scope authority

meaning:
Even if role/visibility would allow an action,
inactive subscription state may still block it.

# ============================================================
# 3. READ-ONLY BLOCK RULE
# ============================================================

read_only_block_rule:
If site subscription state is inactive,
mutation/management actions should be blocked first.

blocked_categories:
- create
- edit
- generate
- publish
- republish
- share_manage
- export_pdf
- export_erp
- generation_rule_manage
- admin_setting_change

allowed_categories:
- self viewing
- visible publication viewing
- notification viewing

# ============================================================
# 4. VIEWING STILL REQUIRES NORMAL AUTHORITY
# ============================================================

important_rule:
Inactive does not bypass role/visibility checks.

meaning:
Read-only mode still respects:
- self scope
- explicit share scope
- view_scope evaluation
- publication visibility rules

# ============================================================
# 5. RECOMMENDED SERVER CHECK ORDER
# ============================================================

recommended_server_check_order:
1. authenticate user
2. resolve site license
3. resolve site subscription status
4. evaluate feature gate
5. evaluate role/visibility authorization
6. execute business logic

# ============================================================
# 6. RECOMMENDED HELPER DIRECTION
# ============================================================

recommended_helpers:
- fn_current_site_license_id()
- fn_current_subscription_status()
- fn_is_feature_allowed(feature_code text)

recommendation:
Subscription gate may be applied in API/service layer first,
with DB/RLS focused mainly on role/visibility and data-scope safety.

# ============================================================
# 7. CONCLUSION
# ============================================================

ShiftManager authorization should treat subscription state
as an upper-layer feature gate,
without weakening the existing role and visibility model.

