# ============================================================
# END OF LIFE PLANNER REVIEW CHECKLIST
# ============================================================

status: canonical-draft
phase: L8-review-ledger-preparation
app: EndOfLifePlanner

document_purpose:
  - 設計レビュー時の確認項目を固定する
  - 実装前の見落としを減らす
  - HOLD解除条件の確認用にも使う

checklist:

  constitution_and_boundary:
    - 終活整理支援であり、専門判断確定をしないことが明記されている
    - AIサポート境界が明記されている
    - pricing と support boundary が矛盾していない

  screen_specification:
    - 各画面に purpose がある
    - required / optional fields が整理されている
    - visible_for / editable_for が role ごとに明確
    - disclaimer が必要画面に配置されている
    - family_viewer への非共有カテゴリ非表示が守られている

  flow_and_permission:
    - onboarding が最小完了導線になっている
    - sharing setup flow が owner only である
    - delegated_editor が共有設定へ到達しない
    - audit 閲覧が owner only である

  api_contract:
    - endpoint grouping が責務ごとに整理されている
    - common request/response context が統一されている
    - warning / error family が過不足ない
    - actor role boundary が screen spec と矛盾しない

  db_design:
    - schema=life が明記されている
    - eol_ prefix 方針が一貫している
    - table responsibility が明確
    - life_person_id scope が一貫している
    - S3_high handling が policy と矛盾しない
    - append-only audit が定義されている

  safety_and_policy:
    - non-medical / non-legal / non-tax が維持されている
    - digital_asset に平文認証情報を保存しない
    - export時 masking 前提が明記されている
    - 緊急兆候時 safety priority が維持されている

  implementation_boundary:
    - 実装コードが混入していない
    - executable SQL が混入していない
    - migration 手順が混入していない
    - design-only であることが明記されている

review_result_template:
  result_values:
    - pass
    - pass_with_minor_notes
    - hold
  note_template:
    - issue_id
    - affected_doc
    - reason
    - recommended_fix
