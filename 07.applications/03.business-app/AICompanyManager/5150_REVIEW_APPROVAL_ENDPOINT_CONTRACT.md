# AICompanyManager Review Approval Endpoint Contract

phase: Phase BH
status: review-approval-endpoint-contract
api_implementation: false

## 1. GET /api/aicm/review/list

Purpose:
- レビュー・承認待ち一覧を取得

Request:
- company_id
- department_id optional
- review_status optional

Response data:
- review_items[]

review item:
- review_item_id
- company_id
- department_id
- ledger_row_id
- delivery_candidate_id
- review_title
- review_status
- target_name
- note
- created_at
- updated_at

## 2. POST /api/aicm/review/approve

Purpose:
- 納品候補を承認する

Request:
- review_item_id
- comment

Response data:
- review_item
- review_action
- delivery_candidate

DB future:
- review_action action_type = approve
- review_item review_status = 承認済み
- delivery_candidate candidate_status = approved
- ledger task_status may become 完了

## 3. POST /api/aicm/review/reject

Purpose:
- 納品候補を差し戻す

Request:
- review_item_id
- comment

Response data:
- review_item
- review_action
- delivery_candidate

DB future:
- review_action action_type = reject
- review_item review_status = 差し戻し
- delivery_candidate candidate_status = rejected
- ledger task_status may become レビュー中 or 保留

## 4. POST /api/aicm/review/request-revision

Purpose:
- 修正依頼を出す

Request:
- review_item_id
- comment

Response data:
- review_item
- review_action
- delivery_candidate

DB future:
- review_action action_type = request_revision
- review_item review_status = 修正待ち
- delivery_candidate candidate_status = revision_required
- new AI workflow may be queued

## 5. POST /api/aicm/workflow/start

Purpose:
- Manager受領台帳からAI自動処理を開始する

Request:
- company_id
- department_id
- ledger_row_id

Response data:
- ai_workflow_run

Rule:
- user does not manually operate Manager/Leader/Worker screens
- actual workflow write should be service role or secure RPC

## 6. AI workflow output

Future flow:
- workflow_run
- workflow_step
- delivery_candidate
- review_item

Human approval is not created by AI.
