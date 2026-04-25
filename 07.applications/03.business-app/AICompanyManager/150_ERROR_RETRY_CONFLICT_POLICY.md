# ============================================================
# AICompanyManager Error Retry Conflict Policy
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase B
status: error-retry-conflict-policy-fixed

## 1. Error Code Canon

| error_code | retryable |
|---|---:|
| validation_error | false |
| permission_denied | false |
| auth_expired | false |
| network_unavailable | true |
| server_timeout | true |
| aiworker_unavailable | true |
| aiworker_rejected | false |
| pipeline_not_found | false |
| project_not_found | false |
| stale_snapshot | true |
| conflict_detected | false |
| delivery_locked | false |
| approval_already_finalized | false |
| unknown_error | true |

## 2. Human Confirmation Required

- human approval
- human revision request
- delivery acceptance
- post-approval revision
- post-delivery reopen
- conflict resolution
- pipeline cancel
- project archive

## 3. Conflict Cases

| conflict | resolution |
|---|---|
| policy_updated_after_submit | submit as new version |
| approval_after_revision | human confirmation |
| delivery_after_revision | stop delivery |
| stale_pipeline_snapshot | pull latest snapshot |
| duplicate_return_request | prefer latest return request |
| delivery_locked | handle as new revision |

## 4. Canonical Rule

Use safe-side behavior.
Final operations must not be silently finalized by retry.
Human approval, delivery, and return finalization must leave audit logs.
