# ============================================================
# TRAINING COACH IMPLEMENTATION PREP COMPLETE CRITERIA
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 130.development
owner: Boss
prepared_by: Zero

goal:
  - TrainingCoach を 実装準備完了 に持っていくための判定基準を固定する

complete_criteria:
  required:
    - integrated design fixed
    - entity dictionary fixed
    - screen exact payload fixed
    - LifeOS integration payload fixed
    - payload versioning policy fixed
    - error code catalog fixed
    - empty / error response contract fixed
    - permission boundary fixed
    - audit event overview fixed
    - sync conflict policy fixed
    - safety message policy fixed
  remaining_design_tasks:
    - state transition matrix
    - idempotency policy
    - correlation id policy
    - locale / currency fallback
    - test case inventory
  completion_rule:
    - remaining_design_tasks が全て fixed になった時点で
      TrainingCoach は implementation-ready と判定する

current_assessment:
  status: not_yet_complete
  reason:
    - exact payload 系は大きく前進したが、状態遷移とテスト観点が未固定
