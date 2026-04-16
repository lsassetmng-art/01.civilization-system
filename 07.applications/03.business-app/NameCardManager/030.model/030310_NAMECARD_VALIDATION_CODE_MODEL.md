# ============================================================
# NAMECARD VALIDATION CODE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_validation_code
owner: Boss
prepared_by: Zero

purpose:
Defines canonical validation codes used before action execution.

validation_codes:

# ------------------------------------------------------------
# GENERAL
# ------------------------------------------------------------
- NCM_VAL_OK
- NCM_VAL_REQUESTER_MISSING
- NCM_VAL_REQUESTER_INVALID
- NCM_VAL_OPERATION_NOT_ALLOWED
- NCM_VAL_TARGET_RECORD_MISSING
- NCM_VAL_TARGET_RECORD_INVALID
- NCM_VAL_CANONICAL_VERSION_REQUIRED
- NCM_VAL_CANONICAL_VERSION_STALE

# ------------------------------------------------------------
# CREATE / UPDATE
# ------------------------------------------------------------
- NCM_VAL_FULL_NAME_REQUIRED
- NCM_VAL_EMAIL_FORMAT_INVALID
- NCM_VAL_PHONE_FORMAT_INVALID
- NCM_VAL_FIELD_LENGTH_EXCEEDED
- NCM_VAL_DETAIL_PAYLOAD_INVALID
- NCM_VAL_DELETE_REASON_REQUIRED_WHEN_POLICY_APPLIES

# ------------------------------------------------------------
# SYNC
# ------------------------------------------------------------
- NCM_VAL_LOCAL_DEVICE_ID_REQUIRED
- NCM_VAL_PENDING_OPERATION_ID_REQUIRED
- NCM_VAL_OPERATION_TYPE_REQUIRED
- NCM_VAL_OPERATION_PAYLOAD_REQUIRED
- NCM_VAL_SYNC_CONTEXT_INVALID

# ------------------------------------------------------------
# APP SHARE
# ------------------------------------------------------------
- NCM_VAL_SHARE_TARGET_IDS_REQUIRED
- NCM_VAL_SHARE_TARGET_NOT_FOUND
- NCM_VAL_SHARE_TARGET_DISABLED
- NCM_VAL_APP_SHARE_TARGET_SCOPE_INVALID
- NCM_VAL_APP_SHARE_NOT_ALLOWED

# ------------------------------------------------------------
# ERP PUBLICATION
# ------------------------------------------------------------
- NCM_VAL_NAMECARD_IDS_REQUIRED
- NCM_VAL_COMPANY_ID_REQUIRED
- NCM_VAL_PUBLICATION_POLICY_CODE_REQUIRED
- NCM_VAL_ERP_USE_SETTING_REQUIRED
- NCM_VAL_ERP_PUBLICATION_NOT_ALLOWED
- NCM_VAL_ERP_APPROVAL_CONTEXT_REQUIRED
- NCM_VAL_ERP_PROTECTED_FIELD_BLOCKED
- NCM_VAL_ERP_REQUIRED_CONTACT_FIELD_MISSING

# ------------------------------------------------------------
# RELATIONSHIP
# ------------------------------------------------------------
- NCM_VAL_RELATIONSHIP_SCOPE_INVALID
- NCM_VAL_RELATIONSHIP_QUERY_NOT_ALLOWED

notes:
- validation codes are pre-execution or pre-transition signals
- validation code is distinct from error code
- a request may fail validation before any deeper error occurs
