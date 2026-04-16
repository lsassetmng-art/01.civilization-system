# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER RETENTION COPY GUIDE
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 090.archive-delete
owner: Boss
prepared_by: Zero
schema: life

copy_examples:

  archive_title:
    - この計画をアーカイブしますか？

  archive_body:
    - アーカイブすると、計画は残したまま通常の編集を終えられます。あとで必要になれば再開できます。

  delete_title:
    - この計画を削除しますか？

  delete_body:
    - 不要な計画だけを削除してください。迷う場合は、アーカイブの方が安全です。

  restore_title:
    - この計画を再開しますか？

  restore_body:
    - 再開すると、通常の計画として再び見直しや更新ができます。

tone_note:
  - delete copy should stay calm
  - archive should be framed as safe default
  - no fear-based coercion
