# TALENT GROWTH PHASE A WRITE ROUTE SKELETON FIXED

status: draft-phase-a-write-route-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の write route を
最初に固定するための skeleton 資料である。

# 1. phase A write route set
- POST /api/v1/employee-certifications
- POST /api/v1/employee-certifications/{employee_certification_id}/renewal
- POST /api/v1/employee-skills
- PATCH /api/v1/employee-skills/{employee_skill_id}
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back
- POST /api/v1/role-requirements
- PATCH /api/v1/role-requirements/{role_requirement_id}
- POST /api/v1/growth-plans
- POST /api/v1/growth-plans/{growth_plan_id}/progress
- POST /api/v1/notifications/read
- POST /api/v1/audit-logs/search

# 2. write route common rule
every write route must do:
- auth context load
- role / scope check
- request parse
- validation
- lock_version / state precondition where applicable
- service call
- audit append where applicable
- outbox append where applicable
- success envelope return

# 3. write route response rule
success response baseline:
~~~json
{
  "ok": true,
  "data": {
    "entity_id": "placeholder",
    "status": "UPDATED"
  },
  "meta": {
    "request_id": "req_01",
    "server_time": "2026-04-13T12:00:00+09:00",
    "version": "v1"
  }
}
~~~

error response baseline:
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_STATE_INVALID_TRANSITION",
    "message": "invalid state transition",
    "details": []
  },
  "meta": {
    "request_id": "req_02",
    "server_time": "2026-04-13T12:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 4. representative write route skeletons

## 4-1. self review save
~~~typescript
export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const { evaluation_sheet_id } = await context.params;
  const requestId = "req_self_review_save_stub";
  const body = await request.json();

  // 1. auth context
  // 2. scope guard
  // 3. validation
  // 4. state check: SELF_REVIEW_DRAFT only
  // 5. service.saveSelfReviewDraft(...)
  // 6. append audit if score/comment/evidence changes

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id,
      evaluation_status_code: "SELF_REVIEW_DRAFT",
      sync_status: "SAVED"
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

## 4-2. self review submit
~~~typescript
export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const { evaluation_sheet_id } = await context.params;
  const requestId = "req_self_review_submit_stub";
  const body = await request.json();

  // 1. auth context
  // 2. scope guard
  // 3. validation
  // 4. state check: SELF_REVIEW_DRAFT only
  // 5. service.submitSelfReview(...)
  // 6. append audit
  // 7. append outbox event: tg.evaluation.sheet.self_review_submitted

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id,
      evaluation_status_code: "SELF_REVIEW_SUBMITTED"
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

## 4-3. manager review save
~~~typescript
export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const { evaluation_sheet_id } = await context.params;
  const requestId = "req_manager_review_save_stub";
  const body = await request.json();

  // 1. auth context
  // 2. team scope guard
  // 3. validation
  // 4. lock_version check
  // 5. service.saveManagerReview(...)
  // 6. append audit

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id,
      evaluation_status_code: "MANAGER_REVIEW_DRAFT",
      lock_version: 2
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

## 4-4. manager review submit
~~~typescript
export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const { evaluation_sheet_id } = await context.params;
  const requestId = "req_manager_review_submit_stub";
  const body = await request.json();

  // 1. auth context
  // 2. team scope guard
  // 3. validation
  // 4. state check
  // 5. service.submitManagerReview(...)
  // 6. append audit
  // 7. append outbox event

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id,
      evaluation_status_code: "MANAGER_REVIEW_SUBMITTED"
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

## 4-5. send back
~~~typescript
export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const { evaluation_sheet_id } = await context.params;
  const requestId = "req_send_back_stub";
  const body = await request.json();

  // 1. auth context
  // 2. manager/HR guard
  // 3. validation: target_role_code, send_back_reason
  // 4. state check
  // 5. service.sendBack(...)
  // 6. append audit
  // 7. append outbox event

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id,
      evaluation_status_code: "SENT_BACK"
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

## 4-6. growth progress
~~~typescript
export async function POST(
  request: Request,
  context: { params: Promise<{ growth_plan_id: string }> }
) {
  const { growth_plan_id } = await context.params;
  const requestId = "req_growth_progress_stub";
  const body = await request.json();

  // 1. auth context
  // 2. owner/manager/HR scope guard
  // 3. validation
  // 4. service.updateGrowthProgress(...)
  // 5. append audit if tracked
  // 6. optional outbox event

  return Response.json({
    ok: true,
    data: {
      growth_plan_id,
      growth_plan_status_code: "ACTIVE"
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

# 5. write route guardrails
- no write route directly computes final governance result without service layer
- no write route bypasses validation matrix
- no write route mutates score/state without audit append
- no write route emits user notification directly
- outbox append only, direct delivery not allowed

# 6. conclusion
phase A write route は、
route thin / service thick / audit-outbox mandatory
の方針で固定する。
