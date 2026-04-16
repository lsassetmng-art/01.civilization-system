# ============================================================
# BUSINESS LEGAL SUPPORT INTEGRATION BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

integration_targets:
  - LifePlanner
  - MoneyPlanner
  - PocketSecretary
  - BusinessOS
  - ERP

boundary_rules:
  - LifeOS 内は整理補助連携
  - BusinessOS/ERP へは明示橋渡し
  - ERP へは本アプリから自動送信しない
  - 外部専門家相談は出力資料経由を基本とする
