# ============================================================
# AICompanyManager Persona Access Control Matrix
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase F
status: access-control-matrix-created
db_target: PERSONA_DATABASE_URL

## 1. Matrix

| table | select | insert | update | delete |
|---|---|---|---|---|
| ai_company_manager_company | owner_user_id | owner_user_id | owner_user_id | none |
| ai_company_manager_project | owner_user_id | owner_user_id | owner_user_id | none |
| ai_company_manager_policy | project owner | project owner | project owner | none |
| ai_company_manager_pipeline_run | project owner | project owner / service | project owner / service | none |
| ai_company_manager_role_assignment | pipeline project owner | service / project owner | service / project owner | none |
| ai_company_manager_stage | pipeline project owner | service / project owner | service / project owner | none |
| ai_company_manager_deliverable | pipeline project owner | service / project owner | service / project owner | none |
| ai_company_manager_review | pipeline project owner | service / project owner | service / project owner | none |
| ai_company_manager_return_request | pipeline project owner | project owner | project owner | none |
| ai_company_manager_approval | project owner | approver / project owner | approver / project owner | none |
| ai_company_manager_delivery | project owner | project owner / service | project owner / service | none |
| ai_company_manager_queue_item | owner_user_id | owner_user_id | owner_user_id | none |
| ai_company_manager_audit_log | owner or project owner | owner or service | none | none |

## 2. Delete Policy

No delete policy by default.

Reason:
- review, return, approval, delivery, and audit logs are records.
- correction should be additive.

## 3. Service Route

Service route should be used for:

- AIWorkerOS bridge snapshot sync
- pipeline stage updates
- role assignment updates
- deliverable ingestion
- system audit log insertion

## 4. Client Route

Client route should be used for:

- project creation
- policy drafting
- policy submission
- human approval
- human revision request
- delivery acceptance
- queue item creation

## 5. Canonical Rule

Client-side access is owner-based.
Bridge-side writes must go through trusted server/service route.
