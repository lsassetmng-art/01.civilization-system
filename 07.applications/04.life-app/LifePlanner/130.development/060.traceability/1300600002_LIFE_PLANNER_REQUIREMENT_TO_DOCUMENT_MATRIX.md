# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER REQUIREMENT TO DOCUMENT MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 060.traceability
owner: Boss
prepared_by: Zero
schema: life

matrix:
  - requirement: 人生計画表を作成できる
    primary_docs:
      - 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md
      - 0500100002_LIFE_PLANNER_CORE_USER_FLOWS.md
      - 0600200003_LIFE_PLANNER_PLAN_REQUEST_RESPONSE_EXACT.md
      - 0900200005_LIFE_PLANNER_PLAN_CREATE_EDIT_SCREEN_ITEM_EXACT.md
      - 0300200003_LIFE_PLANNER_LOGICAL_TABLE_LIFE_PLAN.md

  - requirement: 年表を表示・編集できる
    primary_docs:
      - 0900100002_LIFE_PLANNER_SCREEN_INVENTORY.md
      - 0500100003_LIFE_PLANNER_SCREEN_TRANSITION_MAP.md
      - 0600200005_LIFE_PLANNER_TIMELINE_REQUEST_RESPONSE_EXACT.md
      - 0900200005_LIFE_PLANNER_PLAN_CREATE_EDIT_SCREEN_ITEM_EXACT.md
      - 0300200005_LIFE_PLANNER_LOGICAL_TABLE_EVENT_TIMELINE.md

  - requirement: 家族共有できる
    primary_docs:
      - 0800100002_LIFE_PLANNER_PRIVACY_SHARING_POLICY.md
      - 0600200007_LIFE_PLANNER_FAMILY_SHARE_REQUEST_RESPONSE_EXACT.md
      - 0900200006_LIFE_PLANNER_FAMILY_SHARE_SCREEN_ITEM_EXACT.md
      - 0300200007_LIFE_PLANNER_LOGICAL_TABLE_FAMILY_SHARE.md
      - 0900300002_LIFE_PLANNER_ROLE_VISIBILITY_EDITABILITY_MATRIX.md

  - requirement: 他アプリ情報を見直し候補として扱う
    primary_docs:
      - 0600100002_LIFE_PLANNER_LIFEOS_INTEGRATION_BOUNDARY.md
      - 0600200006_LIFE_PLANNER_REVIEW_REFLECTION_REQUEST_RESPONSE_EXACT.md
      - 0600400002_LIFE_PLANNER_INBOUND_APP_ASSUMPTION_MATRIX.md
      - 0300200006_LIFE_PLANNER_LOGICAL_TABLE_REVIEW_AND_REFLECTION.md

  - requirement: シナリオ比較できる
    primary_docs:
      - 0600200008_LIFE_PLANNER_SCENARIO_REQUEST_RESPONSE_EXACT.md
      - 0900200007_LIFE_PLANNER_SCENARIO_COMPARE_SCREEN_ITEM_EXACT.md
      - 0300200008_LIFE_PLANNER_LOGICAL_TABLE_SCENARIO_AND_DECISION.md
      - 1200200003_LIFE_PLANNER_SCREEN_AND_FEATURE_MATRIX.md

  - requirement: Free / Family の差分がある
    primary_docs:
      - 0800100003_LIFE_PLANNER_PRICING_POLICY.md
      - 1200200002_LIFE_PLANNER_PHASE_AND_PLAN_SCOPE_MATRIX.md
      - 0900300003_LIFE_PLANNER_SCREEN_ACCESS_RULES.md
