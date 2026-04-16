# ============================================================
# LEGAL SUPPORT CATEGORY TEMPLATE FIELD EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: architecture
subdomain: domain

principles:
  - テンプレートは入力補助であり、法的結論を示さない
  - category ごとに「初期入力カード」を定義する
  - すべて legal_case 作成後の初期セットアップに使う
  - Free は一部テンプレート簡易版、有料は完全版

template_field_exact:

  family:
    legal_case_prefill:
      category: family
      priority: medium
    starter_cards:
      - current_issue_summary
      - family_members_involved
      - key_dates
      - next_questions

  inheritance:
    legal_case_prefill:
      category: inheritance
      priority: high
      primary_app_route: inheritance_support
    starter_cards:
      - deceased_person_summary
      - heir_candidates
      - will_status
      - property_related_documents
      - urgent_deadlines

  divorce:
    legal_case_prefill:
      category: divorce
      priority: high
    starter_cards:
      - parties_summary
      - children_related_points
      - property_related_points
      - communication_history
      - next_questions

  neighborhood:
    legal_case_prefill:
      category: neighborhood
      priority: medium
    starter_cards:
      - counterpart_summary
      - incident_timeline
      - evidence_documents
      - consultation_questions

  contract:
    legal_case_prefill:
      category: contract
      priority: medium
    starter_cards:
      - contract_counterparty
      - contract_date
      - issue_summary
      - held_documents
      - next_questions

  consumer:
    legal_case_prefill:
      category: consumer
      priority: medium
    starter_cards:
      - business_operator
      - purchase_contract_date
      - paid_amount
      - trouble_summary
      - refund_or_cancel_goal

  debt:
    legal_case_prefill:
      category: debt
      priority: high
    starter_cards:
      - creditor_or_debtor
      - amount_summary
      - payment_history
      - reminders_or_demands
      - next_action

  labor:
    legal_case_prefill:
      category: labor
      priority: high
    starter_cards:
      - employer_summary
      - employment_type
      - issue_start_date
      - evidence_status
      - consultation_questions

  housing:
    legal_case_prefill:
      category: housing
      priority: medium
    starter_cards:
      - property_summary
      - landlord_or_management
      - contract_status
      - issue_timeline
      - related_documents

  accident:
    legal_case_prefill:
      category: accident
      priority: high
    starter_cards:
      - incident_date_place
      - involved_people
      - damage_summary
      - records_and_receipts
      - urgent_actions

  end_of_life:
    legal_case_prefill:
      category: end_of_life
      priority: medium
      primary_app_route: end_of_life_planner
    starter_cards:
      - personal_intentions
      - family_share_scope
      - will_related_notes
      - medical_intentions
      - handoff_items

  other:
    legal_case_prefill:
      category: other
      priority: medium
    starter_cards:
      - issue_summary
      - timeline
      - stakeholders
      - documents
      - questions

starter_card_mapping_notes:
  - starter card は UI 上の入力ブロック名
  - 実体保存先は legal_case / fact_timeline / stakeholder / document_item / question_list などに分散する
