# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT FAMILY SHARE AND NOTIFICATION UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

family_share_ui:
  - 招待一覧と active member 一覧を分ける
  - membership_status を色やラベルで明示する
  - revoke は confirm を必須にする
  - viewer 権限のみを初期提供する

notification_ui:
  - notification_type ごとに on/off を置く
  - timing_profile は minimal / standard / intensive の3段階
  - quiet hours は詳細設定に入れる
  - family share 更新通知は plus_family でのみ表示する

consultation_prep_ui:
  - preview を先、pdf は後ろに置く
  - include_sections をチェック形式で選べるようにする
  - disclaimer を preview と pdf の両方に表示する
