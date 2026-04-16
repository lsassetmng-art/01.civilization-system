# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT NOTIFICATION OPERATION GUIDE
# ============================================================

status: draft-formal
system: LegalSupport
layer: operations
subdomain: support

operation_principles:
  - 通知は多すぎないことを優先
  - minimal を推奨初期値にしてもよい
  - family share 更新通知はバッチ通知でもよい
  - quiet hours を尊重する

recommended_defaults:
  free:
    deadline_pre_alert:
      is_enabled: true
      timing_profile: minimal
    same_day_alert:
      is_enabled: true
      timing_profile: standard
    unresolved_document_alert:
      is_enabled: false
    next_consultation_reminder:
      is_enabled: true
      timing_profile: minimal
    family_share_update_alert:
      is_enabled: false

  plus_family:
    deadline_pre_alert:
      is_enabled: true
      timing_profile: standard
    same_day_alert:
      is_enabled: true
      timing_profile: standard
    unresolved_document_alert:
      is_enabled: true
      timing_profile: standard
    next_consultation_reminder:
      is_enabled: true
      timing_profile: standard
    family_share_update_alert:
      is_enabled: true
      timing_profile: minimal
