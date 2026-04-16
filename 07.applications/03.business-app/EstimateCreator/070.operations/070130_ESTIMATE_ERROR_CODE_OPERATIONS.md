# ============================================================
# ESTIMATE ERROR CODE OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Error operations must classify failures explicitly.

Representative categories:

- AUTH_ERROR
- OFFLINE_NOT_ALLOWED
- INVALID_ESTIMATE_STATE
- VALIDATION_FAILED
- SHARE_TARGET_INVALID
- SHARE_EXECUTION_FAILED
- SYNC_FAILED
- SYNC_CONFLICT
- ERP_PUBLICATION_REJECTED
- ERP_PUBLICATION_FAILED
- INVENTORY_REFERENCE_FAILED
- PREMIUM_PLAN_INACTIVE
- PREMIUM_PLAN_UNKNOWN
- TEMPLATE_APPLY_FAILED
- QA_OPERATION_DENIED

Operational handling must support retryability judgment where relevant.

