# ============================================================
# LEGAL SUPPORT CROSS APP HANDOFF PAYLOAD EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: integration
subdomain: lifeos-linkage
schema: life

principles:
  - handoff は LegalSupport 内の正本を保ったまま、要約payload を他アプリへ渡す
  - payload は最小限で、元データ全文転送を避ける
  - 法的結論や勝敗予測は handoff 対象外
  - target app ごとに必要最小断面を定義する

common_handoff_envelope:
  handoff_source_app: LegalSupport
  handoff_target_app: string
  legal_case_id: uuid
  handoff_reason: string
  created_at: timestamptz
  payload_version: v1

handoff_targets:

  inheritance_support:
    request_payload:
      handoff_source_app: LegalSupport
      handoff_target_app: InheritanceSupport
      legal_case_id: uuid
      handoff_reason: inheritance_related_case
      payload:
        case_summary:
          title: string
          category: inheritance
          status: string
          priority: string
          summary: string|null
        family_context:
          stakeholders:
            - stakeholder_type: string
              display_name: string
              relation_to_case: string|null
        timeline_summary:
          - event_date: date|null
            event_type: string
            fact_text: string
            verification_status: string
        document_summary:
          - document_category: string
            document_name: string
            possession_status: string
            important_flag: boolean
        deadlines:
          - deadline_type: string
            deadline_date: date
            urgency_level: string

  business_legal_support:
    request_payload:
      handoff_source_app: LegalSupport
      handoff_target_app: BusinessLegalSupport
      legal_case_id: uuid
      handoff_reason: business_related_case
      payload:
        case_summary:
          title: string
          category: string
          status: string
          priority: string
          summary: string|null
        issue_summary:
          open_questions:
            - question_text: string
              priority: string
        document_summary:
          - document_category: string
            document_name: string
            possession_status: string
        next_actions:
          - title: string
            due_date: date|null

  end_of_life_planner:
    request_payload:
      handoff_source_app: LegalSupport
      handoff_target_app: EndOfLifePlanner
      legal_case_id: uuid
      handoff_reason: end_of_life_related_case
      payload:
        case_summary:
          title: string
          category: end_of_life
          status: string
          priority: string
          summary: string|null
        intention_related_summary:
          selected_notes:
            - text: string
        family_share_context:
          visibility_scope: string
          family_share_enabled: boolean
        document_summary:
          - document_category: string
            document_name: string
            possession_status: string

  money_planner_future:
    request_payload:
      handoff_source_app: LegalSupport
      handoff_target_app: MoneyPlanner
      legal_case_id: uuid
      handoff_reason: expense_tracking_related
      payload:
        case_summary:
          title: string
          category: string
        expense_summary:
          - expense_type: string
            amount: numeric
            currency_code: string
            paid_at: date|null

rules:
  - handoff payload は selected summary のみ
  - private note / assumption_text / audit metadata は handoff しない
  - professional_future 向け payload は別設計に分離する
