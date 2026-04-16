# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT TEMPLATE CARD UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

ui_policy:
  - category 選択後に starter_cards を上から順に提示する
  - card は 1画面1入力群を基本とする
  - スキップ可能 card と必須 card を分ける
  - 完了率を表示して入力負荷を下げる

card_types:
  required_first_cards:
    - issue_summary
    - current_issue_summary
    - deceased_person_summary
    - parties_summary
  optional_cards:
    - evidence_documents
    - records_and_receipts
    - family_share_scope
    - will_related_notes

plan_gating:
  free:
    - simple_cards_only
  plus_family:
    - full_card_set
    - category_specific_checklist
