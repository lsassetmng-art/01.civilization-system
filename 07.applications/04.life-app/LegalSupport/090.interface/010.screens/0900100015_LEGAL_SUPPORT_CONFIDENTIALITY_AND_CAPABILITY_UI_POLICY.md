# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT CONFIDENTIALITY AND CAPABILITY UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

ui_principles:
  - 機密度と権限差分は、隠れているだけでなく理由が伝わるようにする
  - owner と family で見える操作差を明示する
  - confidential な document は badge と confirm で誤共有を防ぐ

document_confidentiality_ui:
  normal:
    badge:
      - 通常
    style_note:
      - 特別警告なし
  sensitive:
    badge:
      - 要注意
    style_note:
      - export 前に確認導線
  private:
    badge:
      - 非共有
    style_note:
      - family share 対象外を明示

capability_ui:
  owner_view:
    - create / update / archive / export / handoff を表示可能
  family_view:
    - read only を明示
    - destructive action を非表示
    - 非表示項目には「共有対象外」説明を出してよい

handoff_ui:
  - target app 名を明示する
  - handoff 実行前に sections と masked fields を確認表示する
