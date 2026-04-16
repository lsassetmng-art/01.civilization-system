# ============================================================
# LIFE PLANNER LIFEOS INTEGRATION BOUNDARY
# ============================================================

inbound:
  - MoneyPlannerから資金計画受信
  - EndOfLifePlannerから終活状況受信
  - BodyMetricsから健康状態系要約受信
  - TrainingCoachから健康目標受信
  - 法律系アプリから手続きメモ受信

boundary_rules:
  - LifePlannerは人生計画の正本を持つ
  - 詳細資金計画の正本はMoneyPlannerに残す
  - 詳細終活情報の正本はEndOfLifePlannerに残す
  - 受信情報は見直し候補として扱う
  - 自動確定は禁止
