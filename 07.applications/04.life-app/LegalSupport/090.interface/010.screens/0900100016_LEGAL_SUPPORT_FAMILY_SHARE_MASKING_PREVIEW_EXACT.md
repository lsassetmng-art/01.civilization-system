# ============================================================
# LEGAL SUPPORT FAMILY SHARE MASKING PREVIEW EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

purpose:
  - family share 実行前に、相手にどう見えるかを owner が確認できるようにする
  - field-level masking matrix を UI preview として可視化する
  - 過剰共有事故を減らす

screen_name:
  - family_share_masking_preview_screen

input:
  request:
    action: get_family_share_masking_preview
    payload:
      legal_case_id: uuid
      preview_profile: enum[family_dashboard, family_export, family_case_detail]

response_shape:
  preview_profile: string
  visible_sections:
    case_summary:
      fields:
        - field_name: string
          value_preview: string|null
    timeline_summary:
      items:
        - preview_row_label: string
          visible_fields:
            - field_name: string
              value_preview: string|null
    stakeholder_summary:
      items:
        - preview_row_label: string
          visible_fields:
            - field_name: string
              value_preview: string|null
    document_summary:
      items:
        - preview_row_label: string
          visible_fields:
            - field_name: string
              value_preview: string|null
    action_deadline_summary:
      items:
        - preview_row_label: string
          visible_fields:
            - field_name: string
              value_preview: string|null

  masked_sections_summary:
    - section_name: string
      masked_reason: string

  warnings:
    - string

preview_profiles:

  family_dashboard:
    intent:
      - 家族ダッシュボードで見える最小断面
    typical_visibility:
      - shared_case_summary
      - upcoming_shared_deadlines
      - shared_documents_to_prepare
      - shared_next_actions

  family_export:
    intent:
      - family 向け PDF export 断面
    typical_visibility:
      - case_summary
      - selected_timeline_summary
      - selected_document_checklist
      - selected_next_actions
      - selected_upcoming_deadlines

  family_case_detail:
    intent:
      - family が案件詳細相当で見える断面
    typical_visibility:
      - selected fact rows
      - family_visible stakeholder
      - shared_flag=true documents
      - selected questions/actions/deadlines

masking_preview_rules:
  - assumption_text は masked_sections_summary に落とす
  - private notes は visible_sections に出さない
  - confidentiality_level=private document は masked_reason を明示する
  - expense_record は family profile では既定非表示
  - family_visible ではない stakeholder は preview に出さない

warning_examples:
  - 一部の書類は非共有設定のため表示されません
  - private 機密度の書類は family 共有対象外です
  - 推測メモや内部メモは表示されません

ui_rules:
  - visible と hidden を両方見せる
  - hidden は件数だけでなく理由を見せる
  - 実際の family 視点に近い preview を優先する
