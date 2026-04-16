
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT SCHEMA DESIGN OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の life スキーマ前提の論理テーブル設計を固定する
  - 実装前にテーブル責務、主キー、関連、削除方針を明確化する
  - request / response exact payload 固定前の前提をそろえる

design_principles:
  - 正本スキーマは life
  - 事業法務相談整理の軽量アプリ責務に限定する
  - BusinessOS/ERP の正式統制モデルと競合しない
  - issue 中心で契約、期限、リスク、相談、添付を束ねる
  - 実装はまだ行わず、論理設計のみを固定する

naming_policy:
  schema:
    - life
  logical_table_prefix:
    - business_legal_
  key_policy:
    - 主キーは uuid 前提
    - 外部参照も uuid 前提
