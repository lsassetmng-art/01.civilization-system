# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER MULTI DEVICE DISPLAY POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 110.infrastructure
subfolder: 020.localization-device
owner: Boss
prepared_by: Zero
schema: life

device_policy:
  iphone_android:
    focus:
      - quick check
      - light edit
      - notification handling
    layout_rules:
      - single column priority
      - dashboard cards stacked
      - timeline condensed mode

  tablet_pc:
    focus:
      - timeline editing
      - comparison
      - family discussion
    layout_rules:
      - multi column allowed
      - dashboard summary + detail side by side
      - scenario compare table expanded

consistency_rules:
  - feature parity is maintained
  - no device-exclusive core function
  - only presentation density changes
