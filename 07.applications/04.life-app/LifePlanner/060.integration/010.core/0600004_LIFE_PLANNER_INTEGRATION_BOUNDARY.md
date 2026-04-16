# ============================================================
# LIFE PLANNER INTEGRATION BOUNDARY
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 060.integration
subfolder: 010.core
owner: Boss
prepared_by: Zero

integration_targets:
  - MoneyPlanner
  - EndOfLifePlanner
  - PersonalLegalSupport
  - InheritanceSupport
  - MealPlanner
  - BodyMetrics
  - TrainingCoach
  - PocketSecretary

boundary_rules:
  - LifeOS 内は整理補助連携
  - 専門判断は各専門アプリまたは専門家側で扱う
  - BusinessOS/ERP の正式業務正本とは分離する
  - 本アプリから外部へ自動送信しない
