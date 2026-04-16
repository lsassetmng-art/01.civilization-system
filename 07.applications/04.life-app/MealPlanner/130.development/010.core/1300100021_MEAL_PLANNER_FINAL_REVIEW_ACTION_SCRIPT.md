# MealPlanner Final Review Action Script

## 1. purpose
最終レビュー時に、どういう順番で何を確認するかを短くまとめる。

## 2. action_script

### step_01
- read:
  - 00_MEAL_PLANNER_INTEGRATED.md
- confirm:
  - 位置づけ
  - 無料 / 有料500円
  - AIチャットのみ
  - 日 / 週 / 月
  - schema life

### step_02
- read:
  - 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md
- confirm:
  - 主要論点が fixed になっているか

### step_03
- read:
  - 9000100004_MEAL_PLANNER_REQUIREMENT_TRACEABILITY_MATRIX.md
- confirm:
  - 主要要件の行き先が揃っているか

### step_04
- read:
  - 9000100007_MEAL_PLANNER_CROSS_DOCUMENT_AUDIT_PLAYBOOK.md
- confirm:
  - old wording / old schema / old pricing の残りがないか

### step_05
- read:
  - 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
- confirm:
  - 実装前 gate を通せそうか

### step_06
- read:
  - 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
- confirm:
  - 実装文書が混ざっていないか

## 3. finish_condition
- major contradiction なし
- wording drift なし
- implementation leak なし
- Boss が freeze candidate とみなせる

## 4. next_after_finish
- さらに設計を磨く
or
- Boss 判断で実装前設計フェーズを閉じる
