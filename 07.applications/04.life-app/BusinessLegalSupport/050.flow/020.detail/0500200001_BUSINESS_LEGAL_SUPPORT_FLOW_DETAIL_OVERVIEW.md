
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT FLOW DETAIL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 050.flow
subfolder: 020.detail
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の主要導線を詳細化する
  - 相談前整理と橋渡し条件を分けて定義する
  - UI 導線固定前の基準をそろえる

flow_principles:
  - まず案件を作る
  - 次に事実、期限、契約、相手方を整理する
  - 共有や外部連携は最後に明示操作で行う
