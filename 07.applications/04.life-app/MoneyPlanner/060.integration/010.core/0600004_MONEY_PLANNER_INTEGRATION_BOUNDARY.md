# ============================================================
# MONEY PLANNER INTEGRATION BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

integration_targets:
  - LifePlanner
  - EndOfLifePlanner
  - InheritanceSupport
  - PersonalLegalSupport
  - PocketSecretary

boundary_rules:
  - LifeOS 内は整理補助連携
  - 専門判断は専門家または専門系システムで扱う
  - BusinessOS/ERP の正式業務正本とは分離する
  - 本アプリから外部へ自動送信しない
