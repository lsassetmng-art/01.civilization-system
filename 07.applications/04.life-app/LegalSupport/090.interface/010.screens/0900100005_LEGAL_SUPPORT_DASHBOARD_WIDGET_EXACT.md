# ============================================================
# LEGAL SUPPORT DASHBOARD WIDGET EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

dashboard_widgets:

  active_case_summary:
    purpose:
      - 進行中案件の概況把握
    source:
      - life.legal_case
    response_shape:
      draft_count: integer
      active_count: integer
      on_hold_count: integer
      completed_count: integer

  upcoming_deadlines:
    purpose:
      - 直近期限の把握
    source:
      - life.deadline_item
      - life.legal_case
    response_shape:
      items:
        - deadline_item_id: uuid
          legal_case_id: uuid
          legal_case_title: string
          deadline_type: string
          deadline_date: date
          urgency_level: string

  unresolved_documents:
    purpose:
      - 未取得・未提出書類の把握
    source:
      - life.document_item
      - life.legal_case
    response_shape:
      items:
        - document_item_id: uuid
          legal_case_id: uuid
          legal_case_title: string
          document_name: string
          possession_status: string
          submission_status: string
          important_flag: boolean

  next_confirmation_points:
    purpose:
      - 次回確認事項の抜け漏れ防止
    source:
      - life.question_list
      - life.consultation_note
    response_shape:
      items:
        - legal_case_id: uuid
          legal_case_title: string
          question_text: string
          priority: string
          question_status: string

  family_shared_updates:
    purpose:
      - 家族共有案件の更新把握
    source:
      - life.legal_case
    gating:
      - plus_family only
    response_shape:
      items:
        - legal_case_id: uuid
          title: string
          updated_at: timestamptz
          visibility_scope: family_shared

widget_layout_rules:
  - 上段は active_case_summary と upcoming_deadlines
  - 中段は unresolved_documents と next_confirmation_points
  - family_shared_updates は有料時のみ表示
  - archived case は widget 対象外
