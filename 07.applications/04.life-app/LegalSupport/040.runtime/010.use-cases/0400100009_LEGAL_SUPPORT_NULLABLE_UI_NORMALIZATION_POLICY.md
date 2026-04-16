# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT NULLABLE UI NORMALIZATION POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

normalization_rules:
  - 空文字は text nullable field で null 化してよい
  - title, fact_text, question_text, summary など必須 text は空文字禁止
  - date 未入力は null
  - boolean 未指定は default を使う
  - enum 未指定は default を使うが、必須確認画面では明示選択を促してよい

recommended_null_targets:
  - legal_case.summary
  - fact_timeline.assumption_text
  - fact_timeline.source_note
  - stakeholder.relation_to_case
  - stakeholder.contact_note
  - document_item.note
  - question_list.note
  - consultation_note.counterpart_name
  - consultation_note.pending_items
  - consultation_note.next_confirmation_points
  - action_item.due_date
  - action_item.note
  - deadline_item.note
  - expense_record.paid_at
  - expense_record.note

non_null_text_targets:
  - legal_case.title
  - fact_timeline.fact_text
  - stakeholder.display_name
  - document_item.document_name
  - question_list.question_text
  - consultation_note.summary
  - action_item.title
