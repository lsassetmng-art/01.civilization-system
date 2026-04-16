# ============================================================
# INHERITANCE SUPPORT INTEGRATION BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

integration_targets:
  - EndOfLifePlanner
  - MoneyPlanner
  - LifePlanner
  - PocketSecretary

boundary_rules:
  - LifeOS 内は整理補助連携
  - 外部専門家へは本アプリから自動送信しない
  - 正式相談は出力資料経由を基本とする
  - ERP/BusinessOS の正式業務正本とは分離する
