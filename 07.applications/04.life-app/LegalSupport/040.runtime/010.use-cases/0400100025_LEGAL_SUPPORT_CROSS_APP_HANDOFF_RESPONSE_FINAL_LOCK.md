# ============================================================
# LEGAL SUPPORT CROSS APP HANDOFF RESPONSE FINAL LOCK
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

purpose:
  - preview_cross_app_handoff と create_cross_app_handoff の response を最終固定する
  - response envelope final lock と handoff audit exact を接続する
  - UI preview / audit / integration の受け口を揃える

principles:
  - handoff は preview と actual execute を分離する
  - preview は非破壊、execute は監査対象
  - 元データ全文ではなく selected summary payload を返す
  - private / masked field は preview 上で理由つき除外を見せる

# ------------------------------------------------------------
# 1. preview_cross_app_handoff
# ------------------------------------------------------------
preview_cross_app_handoff:
  request:
    action: preview_cross_app_handoff
    payload:
      legal_case_id: uuid
      target_app: enum[InheritanceSupport, BusinessLegalSupport, EndOfLifePlanner, MoneyPlanner_future]
      handoff_profile: enum[inheritance_support, business_legal_support, end_of_life_planner, money_planner_future]
      included_sections:
        case_summary: boolean
        timeline_summary: boolean
        stakeholder_summary: boolean
        document_summary: boolean
        question_summary: boolean
        action_deadline_summary: boolean
        expense_summary: boolean
  response:
    action: preview_cross_app_handoff
    success: true
    data:
      preview_profile: cross_app_handoff
      preview:
        target_app: string
        handoff_profile: string
        legal_case_id: uuid
        included_sections: jsonb
        masked_fields_summary:
          - section_name: string
            masked_reason: string
        payload_preview:
          case_summary: object|null
          timeline_summary:
            - object
          stakeholder_summary:
            - object
          document_summary:
            - object
          question_summary:
            - object
          action_deadline_summary:
            - object
          expense_summary:
            - object
        disclaimer:
          - この内容は他アプリに渡す要約payloadのプレビューです
          - 元データ全文ではなく、選択された要約のみが対象です
          - 法的判断や内部メモは handoff 対象外です
    message: null
    meta:
      masked_count: integer
      warning_count: integer
      payload_digest: string|null

# ------------------------------------------------------------
# 2. create_cross_app_handoff
# ------------------------------------------------------------
create_cross_app_handoff:
  request:
    action: create_cross_app_handoff
    payload:
      legal_case_id: uuid
      target_app: enum[InheritanceSupport, BusinessLegalSupport, EndOfLifePlanner, MoneyPlanner_future]
      handoff_profile: enum[inheritance_support, business_legal_support, end_of_life_planner, money_planner_future]
      included_sections:
        case_summary: boolean
        timeline_summary: boolean
        stakeholder_summary: boolean
        document_summary: boolean
        question_summary: boolean
        action_deadline_summary: boolean
        expense_summary: boolean
      user_confirmed: boolean
  response:
    action: create_cross_app_handoff
    success: true
    data:
      result:
        legal_case_id: uuid
        target_app: string
        handoff_profile: string
        included_sections: jsonb
        payload_digest: string|null
        handoff_audit_log_id: uuid
        handed_off_at: timestamptz
    message: null
    meta:
      updated_at: timestamptz

rules:
  - user_confirmed=true でなければ create_cross_app_handoff は実行しない
  - preview と create で payload shape は極力一致させる
  - payload_digest は全文保存の代替として利用できる
  - MoneyPlanner_future は future profile として制限可能
  - hidden / masked 項目は create 時にも handoff 対象外

common_failure_examples:
  - plus_family_required
  - handoff_target_not_allowed
  - confidentiality_violation
  - hidden_by_masking_policy
  - legal_case_not_found
  - archived_case_not_mutable
