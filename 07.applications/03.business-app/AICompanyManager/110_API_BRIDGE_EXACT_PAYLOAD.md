# ============================================================
# AICompanyManager API Bridge Exact Payload
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase B
status: api-payload-fixed

## 1. Purpose

This document defines app-side API and AIWorkerOS bridge payloads.

## 2. App API

### Create Project

endpoint:
POST /api/v1/business/ai-company-manager/projects

request:
{
  "company_id": "uuid",
  "project_title": "string",
  "project_summary": "string",
  "priority": "normal",
  "due_at": "2026-05-01T10:00:00+09:00",
  "delivery_format": "markdown",
  "human_approval_required": true
}

response:
{
  "ok": true,
  "project_id": "uuid",
  "project_status": "draft",
  "created_at": "timestamp"
}

### Submit Policy

endpoint:
POST /api/v1/business/ai-company-manager/projects/{project_id}/policy/submit

request:
{
  "policy_title": "string",
  "business_goal": "string",
  "expected_output": "string",
  "target_audience": "string",
  "constraints_text": "string",
  "forbidden_text": "string",
  "quality_standard": "string",
  "review_policy": "string",
  "delivery_requirement": "string"
}

response:
{
  "ok": true,
  "policy_id": "uuid",
  "project_id": "uuid",
  "project_status": "submitted_to_president",
  "next_action": "start_pipeline"
}

### Start Pipeline

endpoint:
POST /api/v1/business/ai-company-manager/projects/{project_id}/pipeline-runs/start

request:
{
  "policy_id": "uuid",
  "execution_mode": "standard",
  "review_strictness": "normal",
  "human_approval_required": true
}

response:
{
  "ok": true,
  "pipeline_run_id": "uuid",
  "aiworker_run_ref": "string",
  "run_status": "president_planning",
  "current_role": "president",
  "current_stage": "president_business_plan"
}

### Get Pipeline Status

endpoint:
GET /api/v1/business/ai-company-manager/pipeline-runs/{pipeline_run_id}/status

response:
{
  "ok": true,
  "pipeline_run_id": "uuid",
  "project_id": "uuid",
  "run_status": "leader_reviewing",
  "current_role": "leader",
  "current_stage": "leader_review",
  "stages": [],
  "pending_reviews": [],
  "pending_approvals": [],
  "updated_at": "timestamp"
}

### Approve Delivery Candidate

endpoint:
POST /api/v1/business/ai-company-manager/approvals/{approval_id}/approve

request:
{
  "approval_comment": "string"
}

response:
{
  "ok": true,
  "approval_id": "uuid",
  "approval_status": "approved",
  "delivery_id": "uuid",
  "delivery_status": "prepared"
}

### Request Revision

endpoint:
POST /api/v1/business/ai-company-manager/approvals/{approval_id}/request-revision

request:
{
  "revision_reason": "string",
  "revision_target": "string",
  "revision_instruction": "string"
}

response:
{
  "ok": true,
  "approval_id": "uuid",
  "approval_status": "revision_requested",
  "pipeline_run_id": "uuid",
  "next_status": "president_revision_planning"
}

## 3. AIWorkerOS Bridge API

### Start Company Pipeline

endpoint:
POST /internal/v1/aiworker/company-pipeline/runs

request:
{
  "source_app": "AICompanyManager",
  "company_id": "uuid",
  "project_id": "uuid",
  "policy_id": "uuid",
  "business_policy": {
    "policy_title": "string",
    "business_goal": "string",
    "expected_output": "string",
    "target_audience": "string",
    "constraints_text": "string",
    "forbidden_text": "string",
    "quality_standard": "string",
    "review_policy": "string",
    "delivery_requirement": "string"
  },
  "role_pipeline": {
    "president_required": true,
    "manager_required": true,
    "leader_required": true,
    "worker_required": true
  },
  "delivery": {
    "delivery_format": "markdown",
    "human_approval_required": true
  }
}

response:
{
  "ok": true,
  "aiworker_run_ref": "string",
  "initial_status": "president_planning",
  "role_assignments": []
}

### Pull Pipeline Snapshot

endpoint:
GET /internal/v1/aiworker/company-pipeline/runs/{aiworker_run_ref}/snapshot

response:
{
  "ok": true,
  "aiworker_run_ref": "string",
  "run_status": "worker_executing",
  "current_role": "worker",
  "current_stage": "worker_execution",
  "business_plan": {},
  "area_action_plans": [],
  "deliverable_plans": [],
  "worker_outputs": [],
  "reviews": [],
  "delivery_candidate": null,
  "updated_at": "timestamp"
}

### Send Revision Request

endpoint:
POST /internal/v1/aiworker/company-pipeline/runs/{aiworker_run_ref}/revision-requests

request:
{
  "source_app": "AICompanyManager",
  "project_id": "uuid",
  "pipeline_run_id": "uuid",
  "revision_source": "human",
  "revision_reason": "string",
  "revision_target": "string",
  "revision_instruction": "string"
}

response:
{
  "ok": true,
  "aiworker_run_ref": "string",
  "accepted": true,
  "next_status": "president_revision_planning"
}

## 4. Error Response

{
  "ok": false,
  "error": {
    "code": "string",
    "message": "string",
    "retryable": false,
    "details": {}
  }
}

## 5. Canonical Rule

App API receives human operations.
AIWorkerOS bridge API connects to AI pipeline only.
AIWorker identity, growth, personality, and internal prompt canon are not included.
