# ============================================================
# LIFE PLANNER PHASE AND PLAN SCOPE MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 120.implementation
subfolder: 020.scope-matrix
owner: Boss
prepared_by: Zero
schema: life

matrix:

  phase_1_basic_planning:
    free:
      - life plan create
      - life plan detail
      - goal create/update
      - timeline create/update
      - review log view/create
      - home dashboard basic
    family:
      - all free features

  phase_2_family_collaboration:
    free:
      - limited pricing guide only
    family:
      - family share setting
      - family viewer
      - family editor
      - share scope control
      - shared update notification

  phase_3_review_enhancement:
    free:
      - reflection candidate view
      - review cycle prompt
      - domain dashboard basic
    family:
      - all free features
      - family-aware review prompts
      - broader dashboard visibility within scope

  phase_4_compare_and_decision:
    free:
      - pricing guide for compare feature
    family:
      - scenario create
      - scenario compare
      - scenario decision
      - age view expanded

scope_notes:
  - Family価値の中心は共有と比較
  - Freeでも人生計画の主機能は成立させる
  - 高度比較と共同運用はFamilyに寄せる
