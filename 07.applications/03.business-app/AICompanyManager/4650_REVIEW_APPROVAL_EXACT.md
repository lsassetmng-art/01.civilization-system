# AICompanyManager Review Approval Exact

phase: Phase AW
status: review-approval-exact
db_apply: false

## 原則

ユーザーが操作するレビューは最終納品承認のみ。

ユーザーは通常操作しない:
- Manager分解
- Leader割当
- Worker成果物作成
- AI自動レビュー

## フロー

1. 部門別タスク台帳に行が作成される
2. AI workflow run が開始される
3. Manager breakdown が自動実行される
4. Leader allocation が自動実行される
5. Worker deliverable creation が自動実行される
6. AI auto review が自動実行される
7. delivery_candidate が作成される
8. review_item が 承認待ち で作成される
9. ユーザーが承認または差し戻しする

## 承認

review_action:
- action_type = approve

review_item:
- review_status = 承認済み

delivery_candidate:
- candidate_status = approved

ledger:
- task_status = 完了 にできる

## 差し戻し

review_action:
- action_type = reject

review_item:
- review_status = 差し戻し

delivery_candidate:
- candidate_status = rejected

ledger:
- task_status = レビュー中 または 保留

## 修正依頼

review_action:
- action_type = request_revision

review_item:
- review_status = 修正待ち

delivery_candidate:
- candidate_status = revision_required

## 監査

承認・差し戻し・修正依頼は review_action に必ず履歴を残す。

履歴は上書きしない。
