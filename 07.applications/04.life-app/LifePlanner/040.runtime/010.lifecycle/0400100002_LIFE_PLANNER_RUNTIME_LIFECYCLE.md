# ============================================================
# LIFE PLANNER RUNTIME LIFECYCLE
# ============================================================

states:
  - draft
  - active
  - under_review
  - shared
  - archived

events:
  - create_plan
  - update_goal
  - review_plan
  - share_plan
  - receive_reflection_candidate
  - apply_reflection_candidate

runtime_rules:
  - 自動反映はしない
  - ownerの採用操作が必要
  - 共有範囲外の情報は表示しない
