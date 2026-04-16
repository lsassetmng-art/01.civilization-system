# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# PERSONAL LEGAL SUPPORT OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
owner: Boss
prepared_by: Zero

summary:
  - PersonalLegalSupport は個人/家族向けの生活法務整理アプリである
  - 法的助言の代替ではなく、相談前整理・期限管理・契約管理・書類整理を支援する
  - LifeOS の一部として、生活イベント・家計・終活入口と連携しやすい設計を持つ
  - BusinessLegalSupport とは境界を持ち、事業法務へは明示導線で橋渡しする

main_users:
  - 個人
  - 夫婦
  - 家族
  - 高齢家族を支える人

core_functions:
  - 法律相談案件作成
  - 契約/書類一覧
  - 期限管理
  - 相談メモ
  - 相手方/関係者整理
  - リスクメモ
  - 次回確認事項
  - 文書添付

pricing:
  free: 0
  plus: 500
  family: 800

non_goals:
  - 法的判断の断定
  - 有資格者の代替
  - 代理交渉
  - 正式意見書作成
  - ERP/BusinessOS の正式法務正本化
