# ============================================================
# LIFE PLANNER PRE IMPLEMENTATION HANDOFF
# ============================================================

status: pre-implementation-handoff
system: LifePlanner
owner: Boss
prepared_by: Zero
schema: life

handoff_purpose:
  - 設計群を次チャットや別担当へ引き継ぎやすくする
  - 実装未着手であることを明示する
  - どこから読めばよいかを短くまとめる

must_remember:
  - 本アプリの保存先スキーマ前提は life
  - 実装はまだ始めない
  - Free / Family 差分はすでに設計固定済み
  - common component 正式審査は別チャット扱い
  - outputs should stay bundled as much as possible

read_first:
  - 0000000002_LIFE_PLANNER_INTEGRATED_CANONICAL.md
  - 0000000004_LIFE_PLANNER_FINAL_DESIGN_STATUS.md
  - 0000000003_LIFE_PLANNER_DESIGN_MASTER_INDEX.md
  - 1200600001_PRE_IMPLEMENTATION_PACKAGE_OVERVIEW.md
  - 1300800002_LIFE_PLANNER_DESIGN_COMPLETION_SUMMARY.md

do_not_do_yet:
  - ddl generation
  - implementation coding
  - exact migration drafting
  - connector-specific runtime assumptions beyond current design docs
