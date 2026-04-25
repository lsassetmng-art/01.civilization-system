# ============================================================
# AICompanyManager Audit and History Model
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase B
status: audit-history-model-fixed

## 1. Audit Target

- company_created
- project_created
- policy_saved
- policy_submitted
- pipeline_started
- pipeline_snapshot_synced
- stage_started
- stage_completed
- deliverable_created
- deliverable_submitted
- review_created
- review_approved
- review_returned
- return_created
- return_resubmitted
- return_resolved
- escalation_created
- approval_waiting
- approval_approved
- approval_revision_requested
- approval_rejected
- delivery_prepared
- delivery_delivered
- delivery_accepted
- queue_created
- queue_synced
- queue_failed
- conflict_detected
- conflict_resolved

## 2. Actor Type

- human
- aiworker
- system
- sync
- bridge

## 3. Audit Log Payload

{
  "audit_log_id": "uuid",
  "owner_user_id": "uuid",
  "project_id": "uuid",
  "pipeline_run_id": "uuid",
  "actor_type": "human",
  "actor_ref": "uuid-or-aiworker-ref",
  "action_code": "policy_submitted",
  "before": {},
  "after": {},
  "reason": "string",
  "created_at": "timestamp"
}

## 4. History Display

- Project timeline
- Pipeline timeline
- Role stage timeline
- Deliverable version history
- Review history
- Return history
- Human approval history
- Delivery history
- Queue sync history

## 5. Canonical Audit Rule

Human approval, return, and delivery must be audited.
AIWorkerOS internal reasoning logs are not stored in AICompanyManager audit log.
