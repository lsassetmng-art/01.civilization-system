# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT CONSULTATION AND SHARE SCREEN FIELDS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

screen_id:
  - consultation_prep
  - summary_output
  - advisor_share_view

consultation_prep:
  fields:
    - issue_id
    - consultation_purpose
    - memo
    - question_list_text
    - result_note
    - next_check_items
    - checklist_items[]
  checklist_item_fields:
    - checklist_id
    - checklist_type
    - item_text
    - checked_flag
    - note
    - sort_order
  source_payload:
    - create_consultation_record_request
    - create_consultation_record_response
    - create_checklist_item_request
    - create_checklist_item_response
  screen_rules:
    - 法的助言ではない表示を常設
    - question_list_text は改行保持表示
    - result_note は相談後のみ強調対象

summary_output:
  fields:
    - issue_summary
    - facts[]
    - deadlines[]
    - risks[]
    - questions_for_expert[]
    - next_actions[]
    - generated_at
  source_payload:
    - generate_issue_summary_response
  screen_rules:
    - summary first / raw data later
    - export は副導線
    - summary は formal legal opinion と誤認させない表示を付ける

advisor_share_view:
  fields:
    - issue_id
    - share_scope
    - shared_to_label
    - note
    - shared_at
    - revoked_at
  source_payload:
    - create_advisor_share_record_request
    - create_advisor_share_record_response
  screen_rules:
    - read-only share を明記する
    - share_scope 選択は必須
    - revocation 導線を visible にする
