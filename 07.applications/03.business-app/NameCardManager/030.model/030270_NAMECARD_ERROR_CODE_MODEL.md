# ============================================================
# NAMECARD ERROR CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_error_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical error codes for NameCardManager.

error_codes:

# ------------------------------------------------------------
# GENERAL
# ------------------------------------------------------------
- NCM_ERR_UNKNOWN
- NCM_ERR_INVALID_REQUEST
- NCM_ERR_VALIDATION_FAILED
- NCM_ERR_UNAUTHORIZED
- NCM_ERR_FORBIDDEN
- NCM_ERR_NOT_FOUND
- NCM_ERR_ALREADY_EXISTS
- NCM_ERR_UNSUPPORTED_OPERATION

# ------------------------------------------------------------
# LOCAL / SYNC
# ------------------------------------------------------------
- NCM_ERR_LOCAL_STORE_UNAVAILABLE
- NCM_ERR_PENDING_QUEUE_WRITE_FAILED
- NCM_ERR_SYNC_PUSH_FAILED
- NCM_ERR_SYNC_PULL_FAILED
- NCM_ERR_SYNC_CONFLICT_DETECTED
- NCM_ERR_SYNC_CONFLICT_UNRESOLVED
- NCM_ERR_CANONICAL_VERSION_MISMATCH

# ------------------------------------------------------------
# NAMECARD DATA
# ------------------------------------------------------------
- NCM_ERR_NAMECARD_CREATE_FAILED
- NCM_ERR_NAMECARD_UPDATE_FAILED
- NCM_ERR_NAMECARD_DELETE_FAILED
- NCM_ERR_NAMECARD_ALREADY_DELETED
- NCM_ERR_REQUIRED_FIELD_MISSING
- NCM_ERR_INVALID_FIELD_FORMAT

# ------------------------------------------------------------
# SHARE
# ------------------------------------------------------------
- NCM_ERR_SHARE_TARGET_INVALID
- NCM_ERR_SHARE_TARGET_MISSING
- NCM_ERR_APP_SHARE_APPLY_FAILED
- NCM_ERR_APP_SHARE_REVOKE_FAILED
- NCM_ERR_SHARE_NOT_ALLOWED

# ------------------------------------------------------------
# ERP PUBLICATION
# ------------------------------------------------------------
- NCM_ERR_ERP_USE_SETTING_MISSING
- NCM_ERR_ERP_COMPANY_CONTEXT_MISSING
- NCM_ERR_ERP_PUBLICATION_POLICY_BLOCKED
- NCM_ERR_ERP_APPROVAL_REQUIRED
- NCM_ERR_ERP_APPROVAL_REJECTED
- NCM_ERR_ERP_RETURNED_FOR_FIX
- NCM_ERR_ERP_PUBLICATION_SUBMIT_FAILED
- NCM_ERR_ERP_PUBLICATION_FAILED
- NCM_ERR_ERP_PUBLICATION_RESULT_UNKNOWN
- NCM_ERR_ERP_REVOKE_NOT_ALLOWED

# ------------------------------------------------------------
# SECURITY / PROTECTION
# ------------------------------------------------------------
- NCM_ERR_PROTECTED_ACCESS_DENIED
- NCM_ERR_ENCRYPTED_STORAGE_UNAVAILABLE
- NCM_ERR_PROTECTION_REQUIREMENT_UNMET
- NCM_ERR_FAIL_CLOSED_TRIGGERED

notes:
- codes should be stable after adoption
- codes are canonical identifiers, not end-user wording
- approval-required is distinct from approval-rejected
