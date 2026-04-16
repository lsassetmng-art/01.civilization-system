# ============================================================
# LIFEOS INTEGRATION
# ============================================================

status: draft

inbound:
  - MealPlanner から栄養傾向
  - TrainingCoach から運動負荷
  - LifePlanner から健康目標参照

outbound:
  - MealPlanner へ体重/睡眠傾向サマリ
  - TrainingCoach へ活動量/疲労傾向
  - LifePlanner へ健康目標サマリ

prohibited:
  - 他アプリへ診断結果を送らない
