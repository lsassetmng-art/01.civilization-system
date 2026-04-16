# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER OWNERSHIP CONTINUITY POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 050.retention-deletion
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - owner changes, shared relationship changes, continuity needs を設計上どう扱うか整理する

continuity_cases:
  - case_01:
      name:
        - owner stops sharing with family
      policy:
        - shared access revoked conceptually
        - owner history remains

  - case_02:
      name:
        - family_editor downgraded to family_viewer
      policy:
        - edit capability removed
        - visible scope remains per updated settings

  - case_03:
      name:
        - owner wants continuity-oriented family summary
      policy:
        - use family meeting summary or share view
        - do not auto-transfer full ownership by default

  - case_04:
      name:
        - long-term continuity after major life transition
      policy:
        - archive old plan
        - create new active plan if needed
        - preserve historical context where meaningful

non_goals_initial:
  - automatic inheritance of ownership
  - legal succession judgement
  - automatic emergency disclosure logic

note:
  - continuity is support-oriented, not legal determination
