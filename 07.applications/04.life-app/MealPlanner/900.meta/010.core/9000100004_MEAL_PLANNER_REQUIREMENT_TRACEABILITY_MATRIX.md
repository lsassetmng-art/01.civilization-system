# MealPlanner Requirement Traceability Matrix

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


## 1. purpose
主要要件がどの設計書で固定されているかを追跡できるようにする。

## 2. traceability_matrix

### requirement_01
- requirement:
  - schema は life を使う
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 1200100004_MEAL_PLANNER_DB_IMPLEMENTATION_NOTES.md
  - 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md

### requirement_02
- requirement:
  - 無料 / 有料500円
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100002_MEAL_PLANNER_POLICY.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md
  - 1300100014_MEAL_PLANNER_DESIGN_CONSISTENCY_MATRIX.md

### requirement_03
- requirement:
  - サポートは AIチャットのみ
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0700100002_MEAL_PLANNER_AI_CHAT_SUPPORT_FAQ_DESIGN.md
  - 0700100003_MEAL_PLANNER_AI_CHAT_BILLING_AND_STORE_BOUNDARY.md

### requirement_04
- requirement:
  - 日 / 週 / 月の3粒度で献立提案
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0400200002_MEAL_PLANNER_RUNTIME_BEHAVIOR.md
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

### requirement_05
- requirement:
  - 予算は 節約 / 普通 / 多め
- source_docs:
  - 0100100002_MEAL_PLANNER_CORE_PRINCIPLES.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md
  - 0900100003_MEAL_PLANNER_UI_COPY_EXACT.md

### requirement_06
- requirement:
  - CSV 出力可能
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0900200007_MEAL_PLANNER_CSV_EXACT_DEFINITION.md
  - 0900100005_MEAL_PLANNER_CSV_FREE_PAID_FINAL_POLICY.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

### requirement_07
- requirement:
  - user_menu を追加可能
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md
  - 0900200004_MEAL_PLANNER_SCREEN_EXACT_IO.md
  - 1200100003_MEAL_PLANNER_API_EXACT_PAYLOADS.md

### requirement_08
- requirement:
  - user_menu は LifeOS を通じて公開可能
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0600300002_LIFEOS_PUBLISH_INTEGRATION.md
  - 0600300003_MEAL_PLANNER_PUBLISH_CONTRACT_SUMMARY.md
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md

### requirement_09
- requirement:
  - 基礎知識の正本は CX22073JW
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0600200002_CX22073JW_INTEGRATION.md
  - 0600200003_MEAL_PLANNER_CX22073JW_BOUNDARY_FINAL.md

### requirement_10
- requirement:
  - 履歴は free / paid で閲覧範囲差をつける
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100007_MEAL_PLANNER_HISTORY_RETENTION_FINAL_POLICY.md
  - 1200100008_MEAL_PLANNER_AUDIT_AND_DELETE_POLICY.md

### requirement_11
- requirement:
  - published menu は直接上書きしない
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100003_MEAL_PLANNER_PUBLISHED_MENU_VERSIONING_POLICY.md
  - 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md

### requirement_12
- requirement:
  - favorite / template は snapshot-first
- source_docs:
  - 00_MEAL_PLANNER_INTEGRATED.md
  - 0800100004_MEAL_PLANNER_FAVORITE_TEMPLATE_VERSION_POLICY.md
  - 0300200003_MEAL_PLANNER_DB_LOGICAL_SCHEMA.md

### requirement_13
- requirement:
  - quality score は ranking helper only
- source_docs:
  - 0800100005_MEAL_PLANNER_PUBLISHED_MENU_SEARCH_SORT_POLICY.md
  - 0800100006_MEAL_PLANNER_PUBLISHED_MENU_QUALITY_SCORE_POLICY.md

### requirement_14
- requirement:
  - notification settings は user 単位
- source_docs:
  - 0600100003_NOTIFICATION_SETTINGS_API_EXACT.md
  - 0300200007_MEAL_PLANNER_NOTIFICATION_SETTINGS_LOGICAL_SHAPE.md

### requirement_15
- requirement:
  - 実装はまだしない
- source_docs:
  - 1300100012_MEAL_PLANNER_IMPLEMENTATION_NOT_YET_BOUNDARY.md
  - 1300100016_MEAL_PLANNER_PHASE_CLOSEOUT_NOTE.md

## 3. usage_note
- 新しい設計変更を入れる時は、この matrix に追記して影響範囲を確認する
