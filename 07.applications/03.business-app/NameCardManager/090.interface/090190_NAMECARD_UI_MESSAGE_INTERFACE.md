# ============================================================
# NAMECARD UI MESSAGE INTERFACE
# ============================================================

status: draft
layer: interface
system: applications
application: NameCardManager
screen_scope: ui_message
owner: Boss
prepared_by: Zero

purpose:
Defines short user-facing message targets for validation and error situations.

# ============================================================
# 1. VALIDATION MESSAGE EXAMPLES
# ============================================================

NCM_VAL_FULL_NAME_REQUIRED:
- message: Full name is required

NCM_VAL_COMPANY_ID_REQUIRED:
- message: Company setting is required

NCM_VAL_PUBLICATION_POLICY_CODE_REQUIRED:
- message: Publication policy is required

NCM_VAL_ERP_USE_SETTING_REQUIRED:
- message: ERP use setting is required

NCM_VAL_SHARE_TARGET_IDS_REQUIRED:
- message: Select at least one share target

NCM_VAL_OPERATION_PAYLOAD_REQUIRED:
- message: Operation data is missing

# ============================================================
# 2. ERROR MESSAGE EXAMPLES
# ============================================================

NCM_ERR_SYNC_CONFLICT_DETECTED:
- message: Sync conflict detected

NCM_ERR_SYNC_PULL_FAILED:
- message: Failed to load latest data

NCM_ERR_APP_SHARE_APPLY_FAILED:
- message: Failed to apply sharing

NCM_ERR_ERP_APPROVAL_REQUIRED:
- message: Approval is required before publication

NCM_ERR_ERP_APPROVAL_REJECTED:
- message: Publication request was rejected

NCM_ERR_ERP_PUBLICATION_FAILED:
- message: Failed to publish to ERP

NCM_ERR_PROTECTED_ACCESS_DENIED:
- message: You do not have access to this information

NCM_ERR_FAIL_CLOSED_TRIGGERED:
- message: Action blocked for safety

