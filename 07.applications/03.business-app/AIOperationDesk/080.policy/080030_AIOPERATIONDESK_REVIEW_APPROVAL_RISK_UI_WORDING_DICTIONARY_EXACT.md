# ============================================================
# AI OPERATION DESK REVIEW APPROVAL RISK UI WORDING DICTIONARY EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: policy
owner: Boss
prepared_by: Zero

purpose:
Define standard wording keys for review, approval, and risk UI.

dictionary_keys:

review_keys:
- key: aiod.review.pending.title
  ja: レビュー待ち
  en: Review Pending
- key: aiod.review.requested.title
  ja: レビュー依頼
  en: Review Request
- key: aiod.review.approved.title
  ja: レビュー承認
  en: Review Approved
- key: aiod.review.returned.title
  ja: レビュー差し戻し
  en: Review Returned
- key: aiod.review.rejected.title
  ja: レビュー却下
  en: Review Rejected
- key: aiod.review.reason.label
  ja: レビュー理由
  en: Review Reason

approval_keys:
- key: aiod.approval.pending.title
  ja: 承認待ち
  en: Approval Pending
- key: aiod.approval.requested.title
  ja: 承認依頼
  en: Approval Request
- key: aiod.approval.approved.title
  ja: 承認済み
  en: Approved
- key: aiod.approval.returned.title
  ja: 承認差し戻し
  en: Approval Returned
- key: aiod.approval.rejected.title
  ja: 承認却下
  en: Approval Rejected
- key: aiod.approval.reason.label
  ja: 承認理由
  en: Approval Reason

risk_keys:
- key: aiod.risk.low
  ja: 低リスク
  en: Low Risk
- key: aiod.risk.medium
  ja: 中リスク
  en: Medium Risk
- key: aiod.risk.high
  ja: 高リスク
  en: High Risk
- key: aiod.risk.privileged
  ja: 特権リスク
  en: Privileged Risk
- key: aiod.risk.review_required
  ja: レビュー必須
  en: Review Required
- key: aiod.risk.approval_required
  ja: 承認必須
  en: Approval Required
- key: aiod.risk.audit_required
  ja: 監査記録必須
  en: Audit Required

queue_keys:
- key: aiod.queue.waiting_trigger
  ja: 起動待ち
  en: Waiting Trigger
- key: aiod.queue.review_pending
  ja: レビュー待ちキュー
  en: Review Pending Queue
- key: aiod.queue.approval_pending
  ja: 承認待ちキュー
  en: Approval Pending Queue
- key: aiod.queue.ready
  ja: 実行準備完了
  en: Ready
- key: aiod.queue.running
  ja: 実行中
  en: Running
- key: aiod.queue.failed_retryable
  ja: 再試行可能失敗
  en: Failed Retryable
- key: aiod.queue.failed_manual_attention
  ja: 手動確認要失敗
  en: Failed Manual Attention
- key: aiod.queue.completed_recent
  ja: 直近完了
  en: Completed Recent
- key: aiod.queue.summary_waiting
  ja: 要約待ち
  en: Summary Waiting

notification_keys:
- key: aiod.notification.review_pending
  ja: レビュー対応が必要です
  en: Review Action Needed
- key: aiod.notification.approval_pending
  ja: 承認対応が必要です
  en: Approval Action Needed
- key: aiod.notification.confirmation_required
  ja: 確認が必要です
  en: Confirmation Needed
- key: aiod.notification.execution_failed
  ja: 実行に失敗しました
  en: Execution Failed
- key: aiod.notification.retry_scheduled
  ja: 再試行を予定しました
  en: Retry Scheduled
- key: aiod.notification.completed_with_warning
  ja: 警告付きで完了しました
  en: Completed With Warning
- key: aiod.notification.completed_summary_available
  ja: バッチ要約が利用可能です
  en: Batch Summary Available

resident_surface_keys:
- key: aiod.resident.explain_screen
  ja: この画面を説明
  en: Explain This Screen
- key: aiod.resident.explain_field
  ja: この項目を説明
  en: Explain This Field
- key: aiod.resident.operation_qa
  ja: この操作はどうやる？
  en: How Do I Do This?
- key: aiod.resident.error_help
  ja: このエラーはどう直す？
  en: How Do I Fix This Error?
- key: aiod.resident.create_draft
  ja: 下書きを作る
  en: Create Draft
- key: aiod.resident.create_execution_request
  ja: 実行依頼を作る
  en: Create Execution Request
- key: aiod.resident.open_main_console
  ja: 本体を開く
  en: Open Main Console

wording_rules:
- canonical codes remain untranslated
- displayed labels must come from dictionary keys
- unsupported locale must fallback by multilingual policy
- risk wording must stay consistent across resident surface and main console
