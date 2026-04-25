# ============================================================
# AICompanyManager State Enum Canon
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase B
status: state-enum-fixed

## 1. Project Status

- draft
- policy_submitted
- pipeline_running
- review_running
- human_approval_waiting
- delivery_prepared
- delivered
- revision_requested
- cancelled
- archived

## 2. Pipeline Run Status

- created
- submitted_to_aiworker
- president_planning
- manager_planning
- leader_planning
- worker_executing
- leader_reviewing
- leader_integrating
- manager_reviewing
- president_reviewing
- human_approval_waiting
- delivery_preparing
- delivered
- revision_planning
- returned
- blocked
- cancelled
- failed

## 3. Role Code

- human
- president
- manager
- leader
- worker
- system

## 4. Stage Code

- human_policy_input
- president_business_plan
- president_manager_distribution
- manager_area_action_plan
- manager_leader_distribution
- leader_deliverable_task_plan
- leader_worker_distribution
- worker_execution
- worker_submit_output
- leader_review
- leader_return_to_worker
- leader_integration
- manager_review
- manager_return_to_leader
- president_final_review
- president_return_to_manager
- human_final_approval
- human_revision_request
- delivery
- archive

## 5. Review Status

- pending
- reviewing
- approved
- returned
- needs_clarification
- blocked
- cancelled

## 6. Return Status

- open
- resubmitted
- resolved
- escalated
- cancelled

## 7. Approval Status

- waiting
- approved
- revision_requested
- rejected
- cancelled

## 8. Delivery Status

- prepared
- delivered
- accepted
- revision_requested
- archived

## 9. Queue Status

- pending
- syncing
- synced
- failed
- cancelled

## 10. Canonical Rule

These enums are app-side display and business meaning canon.
AIWorkerOS internal status is normalized into these values for AICompanyManager.
