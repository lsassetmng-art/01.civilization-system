# ============================================================
# NAMECARD UI STATE CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_ui_state_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical UI state codes for visible status rendering.

# ============================================================
# 1. SYNC UI STATE CODES
# ============================================================

sync_ui_state_codes:
- UI_SYNC_LOCAL_ONLY
- UI_SYNC_PENDING
- UI_SYNC_SYNCING
- UI_SYNC_SYNCED
- UI_SYNC_CONFLICT
- UI_SYNC_FAILED

# ============================================================
# 2. APP SHARE UI STATE CODES
# ============================================================

app_share_ui_state_codes:
- UI_APP_SHARE_PRIVATE
- UI_APP_SHARE_SHARED_PARTIAL
- UI_APP_SHARE_SHARED_ACTIVE
- UI_APP_SHARE_REVOKED

# ============================================================
# 3. ERP PUBLICATION UI STATE CODES
# ============================================================

erp_publication_ui_state_codes:
- UI_ERP_NOT_PUBLISHED
- UI_ERP_PENDING_APPROVAL
- UI_ERP_APPROVED_NOT_PUBLISHED
- UI_ERP_RETURNED_FOR_FIX
- UI_ERP_REJECTED
- UI_ERP_PUBLISHED
- UI_ERP_PUBLISH_FAILED

# ============================================================
# 4. RELATIONSHIP UI STATE CODES
# ============================================================

relationship_ui_state_codes:
- UI_REL_NONE
- UI_REL_EXISTS
- UI_REL_IMPORTANT
- UI_REL_MULTIPLE

# ============================================================
# 5. PROTECTION UI STATE CODES
# ============================================================

protection_ui_state_codes:
- UI_PROTECTED_NORMAL
- UI_PROTECTED_RESTRICTED
- UI_PROTECTED_HIDDEN

notes:
- codes are canonical UI identifiers
- approval and publication must remain distinguishable
- UI state code is not equal to error code
