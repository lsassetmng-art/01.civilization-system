# MealPlanner Handoff Note For Next Phase

## 1. purpose
次フェーズへ引き継ぐ時の最小メモ。

## 2. handoff_summary
- app_name:
  - MealPlanner
- schema:
  - life
- pricing:
  - 無料 / 有料500円
- support:
  - AIチャットのみ
- main planning horizons:
  - daily / weekly / monthly
- source_of_truth:
  - 基礎知識 / 公開知識 / 辞書知識は CX22073JW 前提
- user_menu:
  - private 起点
  - LifeOS 公開申請経由
- csv:
  - free / paid とも利用可
  - paid は optional columns 可
- history:
  - DB保持
  - free は直近30日
- versioning:
  - published menu 直接上書き禁止
  - snapshot-first

## 3. do_not_assume
- DDL があるとは思わない
- SQL があるとは思わない
- 実装コードがあるとは思わない
- notification delivery 実装があるとは思わない

## 4. next_phase_entry_points
- API:
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
- model:
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
- UI:
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
- policy:
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
- review:
  - 1300100019_MEAL_PLANNER_PRE_IMPLEMENTATION_ACCEPTANCE_GATE.md
