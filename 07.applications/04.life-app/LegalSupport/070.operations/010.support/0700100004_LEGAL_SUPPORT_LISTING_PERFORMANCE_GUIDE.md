# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT LISTING PERFORMANCE GUIDE
# ============================================================

status: draft-formal
system: LegalSupport
layer: operations
subdomain: support

listing_principles:
  - 一覧は 20件単位を基本にする
  - dashboard は要点だけ返す
  - 重い全文検索よりも絞り込み優先
  - archived を既定で外して体感速度を保つ

practical_rules:
  - legal_case_list の初期表示は updated_at desc
  - widget は最大10件まで
  - document unresolved 集計は have/not have と pending を主軸にする
  - family share 更新一覧は near realtime ではなく batch でもよい
