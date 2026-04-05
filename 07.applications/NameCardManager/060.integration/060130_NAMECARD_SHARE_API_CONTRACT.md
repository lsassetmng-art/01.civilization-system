# ============================================================
# NAMECARD SHARE API CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: share_api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines API contract for app-internal sharing.

# ============================================================
# 1. APP SHARE REQUEST
# ============================================================

Expected request content may include:
- requester identity
- target namecard ids
- share target ids
- share mode
- operation timestamp

# ============================================================
# 2. APP SHARE RESPONSE
# ============================================================

Expected response content may include:
- applied_targets
- rejected_targets
- resulting_app_share_state
- validation_errors

# ============================================================
# 3. APP SHARE REVOKE REQUEST
# ============================================================

Expected request content may include:
- requester identity
- target namecard ids
- revoked share target ids

# ============================================================
# 4. APP SHARE REVOKE RESPONSE
# ============================================================

Expected response content may include:
- revoked_targets
- unchanged_targets
- resulting_app_share_state
- validation_errors

