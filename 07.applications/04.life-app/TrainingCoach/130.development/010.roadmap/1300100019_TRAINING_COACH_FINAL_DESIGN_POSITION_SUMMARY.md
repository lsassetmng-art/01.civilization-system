# ============================================================
# TRAINING COACH FINAL DESIGN POSITION SUMMARY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 130.development
owner: Boss
prepared_by: Zero

purpose:
  - TrainingCoach が設計上どこまで到達しているかを最終位置として要約する
  - 次に何をするなら何が自然かを明確にする
  - 実装未着手方針を再確認する

current_position:
  product:
    - かなり明確
  payload:
    - fixed
  schema:
    - fixed to life
  physical_model:
    - defined
  ddl:
    - draft prepared
  seed:
    - policy and actual row catalog prepared
  copy_assets:
    - broad draft coverage available
  future_share:
    - semantic boundary strongly prepared
  support_and_help:
    - strongly prepared
  implementation:
    - not started

what_is_done_enough:
  - 設計全体の骨格
  - v1 scope
  - pricing
  - payload and runtime rules
  - schema and db draft
  - seed direction
  - major copy and help drafts
  - content governance
  - handoff packages

what_is_intentionally_not_done:
  - actual DB apply
  - actual API implementation
  - actual UI implementation
  - seed insertion execution
  - final translation QA
  - full canonical single-file merge of every draft

natural_next_if_still_design_only:
  - final canonical single-file merge
  - root-level index refinement
  - cross-doc consistency check refresh after any later edits

natural_next_if_eventually_implementation:
  - db review with 佐藤
  - apply-ready SQL conversion
  - API / UI exact implementation mapping
  - seed execution plan
  - test case execution planning

policy_reminder:
  - Boss 方針により、現時点では実装は進めない
  - bundled output 方針を維持する
