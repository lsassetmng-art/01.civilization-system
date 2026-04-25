# ============================================================
# AICompanyManager DB Exact Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase B
status: db-exact-design-fixed

## 1. Purpose

This document defines the BusinessOS-side DB exact design for AICompanyManager.

This is design only.
DB apply is not performed in Phase B.

## 2. Canonical Schema

schema: business

Reason:
- AICompanyManager is a business-app.
- It owns human operation, approval, delivery, and history records.
- AI worker identity, growth, and internal execution remain in AIWorkerOS.

## 3. Table List

| table | purpose |
|---|---|
| business.ai_company_manager_company | AI company operation unit |
| business.ai_company_manager_project | business project |
| business.ai_company_manager_policy | human policy submitted to President |
| business.ai_company_manager_pipeline_run | app-side tracking of AIWorkerOS pipeline run |
| business.ai_company_manager_role_assignment | President / Manager / Leader / Worker assignment display |
| business.ai_company_manager_stage | pipeline stage tracking |
| business.ai_company_manager_deliverable | deliverable management |
| business.ai_company_manager_review | review result |
| business.ai_company_manager_return_request | return / rework request |
| business.ai_company_manager_approval | human approval |
| business.ai_company_manager_delivery | delivery |
| business.ai_company_manager_queue_item | app-side local queue meaning |
| business.ai_company_manager_audit_log | audit log |

## 4. Core Columns

### business.ai_company_manager_company

- company_id uuid primary key
- owner_user_id uuid not null
- company_name text not null
- display_name text
- description text
- status text not null
- aiworker_org_ref text
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_project

- project_id uuid primary key
- company_id uuid not null
- owner_user_id uuid not null
- project_title text not null
- project_summary text
- project_status text not null
- priority text not null
- due_at timestamptz
- delivery_format text
- human_approval_required boolean not null
- current_pipeline_run_id uuid
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_policy

- policy_id uuid primary key
- project_id uuid not null
- policy_title text not null
- business_goal text not null
- expected_output text not null
- target_audience text
- constraints_text text
- forbidden_text text
- quality_standard text
- review_policy text
- delivery_requirement text
- policy_status text not null
- submitted_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_pipeline_run

- pipeline_run_id uuid primary key
- project_id uuid not null
- policy_id uuid not null
- aiworker_run_ref text
- run_status text not null
- current_role text
- current_stage text
- started_at timestamptz
- completed_at timestamptz
- cancelled_at timestamptz
- last_sync_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_role_assignment

- assignment_id uuid primary key
- pipeline_run_id uuid not null
- role_code text not null
- aiworker_ref text not null
- display_name text
- assigned_domain text
- assignment_status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_stage

- stage_id uuid primary key
- pipeline_run_id uuid not null
- stage_code text not null
- role_code text not null
- stage_status text not null
- input_summary text
- output_summary text
- started_at timestamptz
- completed_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_deliverable

- deliverable_id uuid primary key
- pipeline_run_id uuid not null
- parent_deliverable_id uuid
- produced_by_role text not null
- produced_by_ref text
- deliverable_title text not null
- deliverable_type text not null
- content_ref text
- content_text text
- deliverable_status text not null
- version_no integer not null
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_review

- review_id uuid primary key
- deliverable_id uuid not null
- pipeline_run_id uuid not null
- reviewer_role text not null
- reviewer_ref text
- review_status text not null
- review_comment text
- quality_score integer
- reviewed_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_return_request

- return_id uuid primary key
- review_id uuid not null
- deliverable_id uuid not null
- pipeline_run_id uuid not null
- from_role text not null
- to_role text not null
- reason text not null
- correction_target text not null
- correction_instruction text not null
- due_at timestamptz
- return_status text not null
- return_count integer not null
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_approval

- approval_id uuid primary key
- project_id uuid not null
- pipeline_run_id uuid not null
- deliverable_id uuid not null
- approver_user_id uuid not null
- approval_status text not null
- approval_comment text
- approved_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_delivery

- delivery_id uuid primary key
- project_id uuid not null
- pipeline_run_id uuid not null
- approval_id uuid not null
- deliverable_id uuid not null
- delivery_status text not null
- delivery_format text not null
- delivery_ref text
- delivered_at timestamptz
- accepted_at timestamptz
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_queue_item

- queue_item_id uuid primary key
- owner_user_id uuid not null
- project_id uuid
- pipeline_run_id uuid
- queue_type text not null
- payload_json jsonb not null
- queue_status text not null
- retry_count integer not null
- last_error_code text
- last_error_message text
- created_at timestamptz not null
- updated_at timestamptz not null

### business.ai_company_manager_audit_log

- audit_log_id uuid primary key
- owner_user_id uuid
- project_id uuid
- pipeline_run_id uuid
- actor_type text not null
- actor_ref text
- action_code text not null
- before_json jsonb
- after_json jsonb
- reason text
- created_at timestamptz not null

## 5. Canonical Rule

BusinessOS side DB stores human-facing operation canon.
AIWorkerOS internal execution canon is not duplicated.
