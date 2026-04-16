# ============================================================
# DB TABLE COLUMN FIXED
# ============================================================

status: canonical-draft
phase: db-exact-fixed
system: life-app
app: LegalSupport
schema_name: life

db_design_principles:
  - case-centric
  - local first compatible
  - api payload と 1対1で辿れる
  - 高秘匿制御を column で表現可能
  - export artifact は原資料と分離して保持する

table_catalog:
  - life.legal_case
  - life.stakeholder
  - life.fact_timeline_event
  - life.fact_timeline_event_stakeholder
  - life.legal_document
  - life.evidence_item
  - life.consultation_note
  - life.legal_task
  - life.deadline_event
  - life.advisor_contact
  - life.case_share_grant
  - life.case_share_pack

tables:

  life.legal_case:
    purpose:
      - 案件の正本
    primary_key:
      - case_id
    columns:
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: owner_user_id
        type: uuid
        nullable: false
      - column_name: title
        type: text
        nullable: false
      - column_name: category
        type: text
        nullable: false
      - column_name: summary
        type: text
        nullable: false
      - column_name: status
        type: text
        nullable: false
      - column_name: importance_level
        type: text
        nullable: true
      - column_name: started_on
        type: date
        nullable: true
      - column_name: next_action_summary
        type: text
        nullable: true
      - column_name: share_scope
        type: text
        nullable: false
      - column_name: confidentiality_level
        type: text
        nullable: false
      - column_name: redaction_default
        type: text
        nullable: false
      - column_name: archive_flag
        type: boolean
        nullable: false
      - column_name: archive_reason
        type: text
        nullable: true
      - column_name: archived_at
        type: timestamptz
        nullable: true
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.stakeholder:
    purpose:
      - 案件関係者
    primary_key:
      - stakeholder_id
    columns:
      - column_name: stakeholder_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: name
        type: text
        nullable: false
      - column_name: stakeholder_type
        type: text
        nullable: false
      - column_name: relation_to_owner
        type: text
        nullable: true
      - column_name: contact_note
        type: text
        nullable: true
      - column_name: role_note
        type: text
        nullable: true
      - column_name: importance_flag
        type: boolean
        nullable: false
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.fact_timeline_event:
    purpose:
      - 事実時系列
    primary_key:
      - timeline_event_id
    columns:
      - column_name: timeline_event_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: event_date
        type: date
        nullable: false
      - column_name: event_time
        type: time
        nullable: true
      - column_name: title
        type: text
        nullable: false
      - column_name: detail
        type: text
        nullable: true
      - column_name: fact_confidence
        type: text
        nullable: false
      - column_name: source_type
        type: text
        nullable: true
      - column_name: source_document_id
        type: uuid
        nullable: true
      - column_name: created_by_user_id
        type: uuid
        nullable: true
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.fact_timeline_event_stakeholder:
    purpose:
      - 時系列と関係者の中間
    primary_key:
      - timeline_event_stakeholder_id
    columns:
      - column_name: timeline_event_stakeholder_id
        type: uuid
        nullable: false
      - column_name: timeline_event_id
        type: uuid
        nullable: false
      - column_name: stakeholder_id
        type: uuid
        nullable: false
      - column_name: created_at
        type: timestamptz
        nullable: false

  life.legal_document:
    purpose:
      - 書類 metadata
    primary_key:
      - legal_document_id
    columns:
      - column_name: legal_document_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: document_category
        type: text
        nullable: false
      - column_name: title
        type: text
        nullable: false
      - column_name: issuer
        type: text
        nullable: true
      - column_name: issued_on
        type: date
        nullable: true
      - column_name: expiry_date
        type: date
        nullable: true
      - column_name: storage_location_note
        type: text
        nullable: true
      - column_name: file_reference
        type: text
        nullable: true
      - column_name: reviewed_flag
        type: boolean
        nullable: false
      - column_name: confidentiality_level
        type: text
        nullable: false
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.evidence_item:
    purpose:
      - 証拠 metadata
    primary_key:
      - evidence_item_id
    columns:
      - column_name: evidence_item_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: title
        type: text
        nullable: false
      - column_name: evidence_type
        type: text
        nullable: true
      - column_name: file_reference
        type: text
        nullable: true
      - column_name: acquired_on
        type: date
        nullable: true
      - column_name: source_summary
        type: text
        nullable: true
      - column_name: authenticity_note
        type: text
        nullable: true
      - column_name: confidentiality_level
        type: text
        nullable: false
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.consultation_note:
    purpose:
      - 面談記録
    primary_key:
      - consultation_note_id
    columns:
      - column_name: consultation_note_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: consulted_at
        type: timestamptz
        nullable: false
      - column_name: advisor_name
        type: text
        nullable: false
      - column_name: advisor_type
        type: text
        nullable: false
      - column_name: consultation_summary
        type: text
        nullable: false
      - column_name: advice_memo
        type: text
        nullable: true
      - column_name: unresolved_points
        type: text
        nullable: true
      - column_name: next_steps
        type: text
        nullable: true
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.legal_task:
    purpose:
      - 案件タスク
    primary_key:
      - task_id
    columns:
      - column_name: task_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: task_type
        type: text
        nullable: false
      - column_name: title
        type: text
        nullable: false
      - column_name: description
        type: text
        nullable: true
      - column_name: assigned_to_role
        type: text
        nullable: true
      - column_name: due_date
        type: date
        nullable: true
      - column_name: status
        type: text
        nullable: false
      - column_name: related_document_id
        type: uuid
        nullable: true
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.deadline_event:
    purpose:
      - 期限イベント
    primary_key:
      - deadline_event_id
    columns:
      - column_name: deadline_event_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: deadline_type
        type: text
        nullable: false
      - column_name: title
        type: text
        nullable: false
      - column_name: due_date
        type: date
        nullable: false
      - column_name: severity
        type: text
        nullable: true
      - column_name: reminder_policy_json
        type: jsonb
        nullable: true
      - column_name: completion_flag
        type: boolean
        nullable: false
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.advisor_contact:
    purpose:
      - 相談先候補
    primary_key:
      - advisor_contact_id
    columns:
      - column_name: advisor_contact_id
        type: uuid
        nullable: false
      - column_name: owner_user_id
        type: uuid
        nullable: false
      - column_name: display_name
        type: text
        nullable: false
      - column_name: advisor_type
        type: text
        nullable: false
      - column_name: region_note
        type: text
        nullable: true
      - column_name: contact_memo
        type: text
        nullable: true
      - column_name: consultation_fee_note
        type: text
        nullable: true
      - column_name: comparison_note
        type: text
        nullable: true
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.case_share_grant:
    purpose:
      - 案件共有設定
    primary_key:
      - case_share_grant_id
    columns:
      - column_name: case_share_grant_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: target_user_id
        type: uuid
        nullable: false
      - column_name: granted_role
        type: text
        nullable: false
      - column_name: included_sections
        type: jsonb
        nullable: false
      - column_name: exclude_sensitive_items
        type: boolean
        nullable: false
      - column_name: redaction_level
        type: text
        nullable: false
      - column_name: is_active
        type: boolean
        nullable: false
      - column_name: granted_at
        type: timestamptz
        nullable: false
      - column_name: revoked_at
        type: timestamptz
        nullable: true
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

  life.case_share_pack:
    purpose:
      - 共有パック生成記録
    primary_key:
      - share_pack_id
    columns:
      - column_name: share_pack_id
        type: uuid
        nullable: false
      - column_name: case_id
        type: uuid
        nullable: false
      - column_name: pack_type
        type: text
        nullable: false
      - column_name: format
        type: text
        nullable: false
      - column_name: included_sections
        type: jsonb
        nullable: false
      - column_name: redaction_level
        type: text
        nullable: false
      - column_name: artifact_status
        type: text
        nullable: false
      - column_name: artifact_reference
        type: text
        nullable: true
      - column_name: generated_by_user_id
        type: uuid
        nullable: true
      - column_name: generated_at
        type: timestamptz
        nullable: false
      - column_name: created_at
        type: timestamptz
        nullable: false
      - column_name: updated_at
        type: timestamptz
        nullable: false

enum_candidates:
  legal_case.category:
    - inheritance
    - gift
    - will
    - family
    - contract
    - money_trouble
    - housing
    - labor
    - consumer
    - elder_support
    - general_other

  legal_case.status:
    - draft
    - active
    - waiting
    - completed
    - archived

  legal_case.share_scope:
    - private
    - shared
    - limited_shared

  legal_case.confidentiality_level:
    - normal
    - sensitive
    - highly_sensitive

  legal_case.redaction_default:
    - full
    - family_safe
    - minimal

  stakeholder.stakeholder_type:
    - self
    - family
    - counterparty
    - supporter
    - lawyer
    - tax_accountant
    - judicial_scrivener
    - administrative_support
    - other

  fact_timeline_event.fact_confidence:
    - confirmed
    - likely
    - uncertain
    - user_memory_only

  consultation_note.advisor_type:
    - lawyer
    - tax_accountant
    - judicial_scrivener
    - administrative_support
    - public_service
    - family_support_center
    - other

  legal_task.status:
    - todo
    - in_progress
    - waiting
    - done
    - cancelled

notes:
  - permissions と counts は response 派生値であり table column に含めない
  - pagination meta は DB column に含めない
  - included_sections は初期は jsonb array とする
