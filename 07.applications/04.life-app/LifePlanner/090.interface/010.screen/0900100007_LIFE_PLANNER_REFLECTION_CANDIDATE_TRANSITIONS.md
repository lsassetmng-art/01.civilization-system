# ============================================================
# LIFE PLANNER REFLECTION CANDIDATE TRANSITIONS
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 010.screen
phase: phase-3
owner: Boss
prepared_by: Zero

entry_points:
  - home
  - life_plan_detail
  - notification_center

candidate_sources:
  - MoneyPlanner
  - EndOfLifePlanner
  - BodyMetrics
  - TrainingCoach
  - 法律系アプリ

flow:
  - reflection_candidate_view
  - reflection_candidate_detail
  - impact_preview
  - apply_reflection_confirm
  - affected_entity_edit
  - review_reason_confirm
  - life_plan_detail

decision_types:
  - apply
  - keep_pending
  - dismiss

rules:
  - 候補は見直し支援用であり自動反映しない
  - 反映時は影響対象を明示する
  - dismissでも履歴は残す
