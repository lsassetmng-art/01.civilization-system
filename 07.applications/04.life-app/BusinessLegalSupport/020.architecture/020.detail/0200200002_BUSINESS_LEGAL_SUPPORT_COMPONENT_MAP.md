# ============================================================
# BUSINESS LEGAL SUPPORT COMPONENT MAP
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 020.architecture
subfolder: 020.detail
owner: Boss
prepared_by: Zero

components:
  issue_workspace:
    role:
      - 案件中心の主コンポーネント
  contract_ledger:
    role:
      - 契約台帳保持
  deadline_center:
    role:
      - 期限一覧と近接期限抽出
  consultation_prep:
    role:
      - 相談前質問と論点整理
  risk_tracking:
    role:
      - リスク分類と対応メモ
  counterparty_registry:
    role:
      - 相手方整理
  summary_exporter:
    role:
      - 相談前サマリー生成
  advisor_share_unit:
    role:
      - read-only 共有制御
  businessos_handoff_unit:
    role:
      - 明示橋渡しドラフト生成
