# ============================================================
# ORDER FLOW SATO REVIEW REQUEST
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero
review_target:
- Sato

purpose:
Formal review request note for OrderFlow SQL candidate packet.

review_request_message:
佐藤（DB担当）レビュー依頼

OrderFlow の初期DB設計について、
以下のSQL候補束をレビュー対象として確認してください。

対象:
- 1200026_ORDER_FLOW_SQL_CANDIDATE_PHASE_1_ORDER_CORE.sql
- 1200027_ORDER_FLOW_SQL_CANDIDATE_PHASE_2_EXECUTION.sql
- 1200028_ORDER_FLOW_SQL_CANDIDATE_PHASE_3_SHIPMENT_HISTORY.sql

見てほしい観点:
- テーブル分割は妥当か
- FK候補の切り方は妥当か
- 状態の持ち方が過不足ないか
- partial shipment / partial delivery を再構成できるか
- 通知 / sync / pending_operation の置き場は妥当か
- index候補は初期値として過不足ないか
- 将来の ERP 連携や app-local 運用に耐えるか
- additive only の方針に反していないか

前提:
- 本束はレビュー用候補であり、まだ実行確定ではない
- destructive change は含めていない
- 共通部品詳細はこの設計束に含めていない
- OrderFlow 固有責務のみを中心に設計している

期待アウトプット:
- OK / 要修正 / 保留
- 修正が必要なら具体的な指摘点
- 実行前に追加で必要な制約や index
- 将来詰めるべき migration 論点

