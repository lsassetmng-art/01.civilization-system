# ============================================================
# BUSINESS LEGAL SUPPORT LOGICAL TABLE DEFINITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 030.schema
owner: Boss
prepared_by: Zero

tables:

  life.business_legal_issue:
    primary_key:
      - issue_id
    required_columns:
      - issue_id
      - owner_user_id
      - title
      - issue_type
      - status
      - priority
      - summary
      - started_on
      - created_at
      - updated_at
    optional_columns:
      - next_action
      - archived_at
      - deleted_at
    notes:
      - 本アプリの中心集約単位
      - owner_user_id 単位で分離管理する

  life.business_legal_contract_item:
    primary_key:
      - contract_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
      - counterparty_id -> life.business_legal_counterparty.counterparty_id
    required_columns:
      - contract_id
      - issue_id
      - title
      - contract_type
      - status
      - created_at
      - updated_at
    optional_columns:
      - counterparty_id
      - signed_on
      - effective_from
      - effective_to
      - renewal_rule
      - auto_renew_flag
      - contract_amount
      - currency_code
      - deleted_at

  life.business_legal_deadline_record:
    primary_key:
      - deadline_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - deadline_id
      - issue_id
      - deadline_type
      - due_at
      - completed_flag
      - created_at
      - updated_at
    optional_columns:
      - related_type
      - related_id
      - alert_policy_code
      - completed_at
      - deleted_at

  life.business_legal_counterparty:
    primary_key:
      - counterparty_id
    required_columns:
      - counterparty_id
      - owner_user_id
      - name
      - counterparty_type
      - created_at
      - updated_at
    optional_columns:
      - country_code
      - contact_person
      - contact_note
      - relationship_note
      - risk_level
      - deleted_at

  life.business_legal_risk_note:
    primary_key:
      - risk_note_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - risk_note_id
      - issue_id
      - risk_category
      - severity
      - summary
      - created_at
      - updated_at
    optional_columns:
      - related_type
      - related_id
      - mitigation_note
      - last_reviewed_at
      - deleted_at

  life.business_legal_consultation_record:
    primary_key:
      - consultation_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - consultation_id
      - issue_id
      - consultation_purpose
      - memo
      - created_at
      - updated_at
    optional_columns:
      - question_list_text
      - result_note
      - next_check_items
      - consulted_at
      - deleted_at

  life.business_legal_attached_document:
    primary_key:
      - attachment_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - attachment_id
      - issue_id
      - file_name
      - file_kind
      - uploaded_at
    optional_columns:
      - related_type
      - related_id
      - storage_scope
      - note
      - deleted_at

  life.business_legal_checklist_item:
    primary_key:
      - checklist_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - checklist_id
      - issue_id
      - checklist_type
      - item_text
      - checked_flag
      - sort_order
      - created_at
      - updated_at
    optional_columns:
      - note
      - deleted_at

  life.business_legal_trouble_timeline:
    primary_key:
      - timeline_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - timeline_id
      - issue_id
      - occurred_at
      - event_type
      - summary
      - created_at
      - updated_at
    optional_columns:
      - note
      - evidence_attachment_count
      - deleted_at

  life.business_legal_advisor_share_record:
    primary_key:
      - share_id
    foreign_keys:
      - issue_id -> life.business_legal_issue.issue_id
    required_columns:
      - share_id
      - issue_id
      - share_scope
      - shared_at
    optional_columns:
      - shared_to_label
      - revoked_at
      - note
      - deleted_at
