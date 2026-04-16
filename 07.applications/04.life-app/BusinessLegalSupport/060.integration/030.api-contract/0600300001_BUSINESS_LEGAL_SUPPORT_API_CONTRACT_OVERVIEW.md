
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT API CONTRACT OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 060.integration
subfolder: 030.api-contract
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の API contract を固定する
  - payload 設計と endpoint 設計を対応づける
  - 実装前に path, method, request, response の形をそろえる

api_principles:
  - 正本スキーマは life
  - API は owner-driven application contract とする
  - enterprise control API は対象外
  - ERP direct API は定義しない
  - advisor access is read-only future scope
  - response は JSON object を基本とする
  - list は items 配列を返す
  - soft delete を前提にする

base_path:
  - /api/life/business-legal-support/v1

authentication_assumption:
  - authenticated owner required
  - advisor_viewer 用 API は将来拡張扱い
