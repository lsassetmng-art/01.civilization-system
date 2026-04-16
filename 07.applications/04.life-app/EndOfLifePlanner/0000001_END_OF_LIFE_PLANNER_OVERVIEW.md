
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
owner: Boss
prepared_by: Zero

summary:
  - EndOfLifePlanner は終活と引継ぎ整理を支援する LifeOS アプリである
  - 医療、介護、資産、連絡先、希望事項、書類所在の整理を支援する
  - 法的助言や医療判断の代替ではなく、意思整理・情報整理・家族共有準備を主目的とする
  - InheritanceSupport や MoneyPlanner と連携しやすい入口設計を持つ

main_users:
  - 個人
  - 家族
  - 高齢家族を支える人
  - 将来準備を始めたい人

core_functions:
  - 終活案件作成
  - 希望事項メモ
  - 医療/介護メモ
  - 資産/書類所在整理
  - 連絡先整理
  - 家族共有準備
  - 相談メモ
  - 文書添付

pricing:
  free: 0
  plus: 500
  family: 800

non_goals:
  - 医療判断の断定
  - 法的助言の断定
  - 正式遺言書の作成代行
  - 代理交渉
  - 公的手続の正式正本化
