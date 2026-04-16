
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
owner: Boss
prepared_by: Zero

summary:
  - LifePlanner は人生全体の中長期計画を整理する主軸アプリである
  - ライフイベント、目標、優先度、準備事項、進捗を一覧化し、人生のロードマップ管理を支援する
  - 実行管理そのものではなく、見通し整理・計画調整・見直し支援を主目的とする
  - MoneyPlanner、EndOfLifePlanner、健康系アプリと連携しやすい中心設計を持つ

main_users:
  - 個人
  - 夫婦
  - 家族
  - 将来設計を整理したい人

core_functions:
  - 人生計画表作成
  - ライフイベント管理
  - 目標管理
  - 優先度整理
  - 時系列表示
  - 見直し通知
  - メモ添付
  - 関連アプリ連携導線

pricing:
  free: 0
  plus: 500
  family: 800

non_goals:
  - 専門家判断の代替
  - 自動人生決定
  - 企業向けプロジェクト管理の代替
  - ERP/BusinessOS の正式業務管理正本化
