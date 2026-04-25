# ============================================================
# AICompanyManager Persona RLS Exact Policy Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase F
status: persona-rls-exact-policy-designed
db_target: PERSONA_DATABASE_URL
db_reviewer: 佐藤（DB担当）

## 1. Purpose

This document defines the Persona-side RLS exact policy design for AICompanyManager.

RLS is not applied in Phase F.
This is a design and candidate package only.

## 2. Core Rule

AICompanyManager records are user-facing app operation records.

Access is based on:

1. owner_user_id direct ownership
2. project ownership derived from business.ai_company_manager_project.owner_user_id
3. pipeline_run ownership derived through pipeline_run -> project -> owner_user_id
4. deliverable / review / return ownership derived through pipeline_run -> project -> owner_user_id
5. queue_item direct owner_user_id
6. audit_log select by owner_user_id or project owner
7. audit_log insert allowed only for user-owned operation records or service/bridge route

## 3. Direct Owner Tables

Direct owner_user_id exists on:

- business.ai_company_manager_company
- business.ai_company_manager_project
- business.ai_company_manager_queue_item
- business.ai_company_manager_audit_log

Policy basis:
- owner_user_id = auth.uid()

## 4. Project-Owned Tables

Project ownership is derived from project_id.

Tables:
- business.ai_company_manager_policy
- business.ai_company_manager_approval
- business.ai_company_manager_delivery

Policy basis:
- exists project where project.project_id = row.project_id and project.owner_user_id = auth.uid()

## 5. Pipeline-Owned Tables

Pipeline ownership is derived through pipeline_run_id.

Tables:
- business.ai_company_manager_pipeline_run
- business.ai_company_manager_role_assignment
- business.ai_company_manager_stage
- business.ai_company_manager_deliverable
- business.ai_company_manager_review
- business.ai_company_manager_return_request

Policy basis:
- exists pipeline_run joined to project where project.owner_user_id = auth.uid()

## 6. Audit Log

audit_log is special.

Recommended:
- select: user can read own project-related audit logs
- insert: user can insert only records where owner_user_id = auth.uid()
- update: disabled by default
- delete: disabled by default

Reason:
- audit logs should be append-only.
- corrections should be new audit records, not updates.

## 7. Service / Bridge Route

AIWorkerOS bridge and server-side service writes should use a trusted server route.

Recommended:
- client RLS remains owner-based.
- service role bypasses RLS when needed.
- bridge writes must still include project_id / pipeline_run_id for auditability.
- bridge actor_type should be bridge or aiworker.
- actor_ref should store AIWorkerOS reference only, not internal prompt or reasoning.

## 8. RLS Apply Gate

RLS apply requires:

- Boss explicit RLS OK / GO
- 佐藤（DB担当）review OK
- PERSONA_DATABASE_URL confirmed
- Method A psql block
- policy conflict check
- no blind destructive policy replacement

## 9. Canonical Rule

Phase F creates RLS exact design only.
RLS apply is deferred to Phase G.
