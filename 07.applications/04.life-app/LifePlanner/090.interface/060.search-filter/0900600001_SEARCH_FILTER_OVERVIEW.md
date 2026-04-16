
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# SEARCH FILTER OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 060.search-filter
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 計画、目標、年表イベントを探しやすくする
  - 長期計画でも迷子になりにくくする
  - mobile と larger screen の両方で操作可能な検索設計を固定する

principles:
  - まずは軽い検索と分かりやすい絞り込みを優先する
  - 条件が多すぎて使いづらくならないようにする
  - Family 共有時でも shared scope 外は検索結果に出さない
  - 検索対象は保存値ベース、表示整形値依存にしない
