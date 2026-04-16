# ============================================================
# API TO ENTITY MAPPING
# ============================================================

status: canonical-draft
system: life-app
app: LegalSupport

mapping_principles:
  - API payload は domain entity に 1回で写像できる粒度にする
  - case を aggregate root とする
  - child entity は case_id 配下で管理する
  - permissions は認可計算結果であり、domain 保存対象ではない
  - counts は集計値であり、response 用派生情報である
  - share_policy は legal_case の共有設定として保持する
  - file_reference は storage 側参照キーとして保持する

api_group_to_entity_mapping:
  case:
    endpoints:
      - GET /cases
      - GET /cases/{case_id}
      - POST /cases
      - PATCH /cases/{case_id}
      - POST /cases/{case_id}/archive
    primary_entity:
      - legal_case
    derived_response_objects:
      - permissions
      - counts
      - share_policy
    request_payload_to_entity_fields:
      title: legal_case.title
      category: legal_case.category
      summary: legal_case.summary
      status: legal_case.status
      importance_level: legal_case.importance_level
      started_on: legal_case.started_on
      next_action_summary: legal_case.next_action_summary
      archive_reason: legal_case.archive_reason_optional

  stakeholder:
    endpoints:
      - GET /cases/{case_id}/stakeholders
      - POST /cases/{case_id}/stakeholders
      - PATCH /cases/{case_id}/stakeholders/{stakeholder_id}
    primary_entity:
      - stakeholder
    request_payload_to_entity_fields:
      name: stakeholder.name
      stakeholder_type: stakeholder.stakeholder_type
      relation_to_owner: stakeholder.relation_to_owner
      contact_note: stakeholder.contact_note
      role_note: stakeholder.role_note
      importance_flag: stakeholder.importance_flag

  timeline:
    endpoints:
      - GET /cases/{case_id}/timeline
      - POST /cases/{case_id}/timeline
      - PATCH /cases/{case_id}/timeline/{timeline_event_id}
    primary_entity:
      - fact_timeline_event
    request_payload_to_entity_fields:
      event_date: fact_timeline_event.event_date
      event_time_optional: fact_timeline_event.event_time_optional
      title: fact_timeline_event.title
      detail: fact_timeline_event.detail
      fact_confidence: fact_timeline_event.fact_confidence
      source_type: fact_timeline_event.source_type
      source_document_id_optional: fact_timeline_event.source_document_id_optional
      related_stakeholder_ids: fact_timeline_event.related_stakeholder_ids

  document:
    endpoints:
      - GET /cases/{case_id}/documents
      - POST /cases/{case_id}/documents
      - PATCH /cases/{case_id}/documents/{document_id}
    primary_entity:
      - legal_document
    secondary_entity_candidates:
      - evidence_item
    request_payload_to_entity_fields:
      document_category: legal_document.document_category
      title: legal_document.title
      issuer: legal_document.issuer
      issued_on: legal_document.issued_on
      expiry_date_optional: legal_document.expiry_date_optional
      storage_location_note: legal_document.storage_location_note
      file_reference: legal_document.file_reference
      reviewed_flag: legal_document.reviewed_flag
      confidentiality_level: legal_document.confidentiality_level

  consultation:
    endpoints:
      - GET /cases/{case_id}/consultations
      - POST /cases/{case_id}/consultations
      - PATCH /cases/{case_id}/consultations/{consultation_note_id}
    primary_entity:
      - consultation_note
    request_payload_to_entity_fields:
      consulted_at: consultation_note.consulted_at
      advisor_name: consultation_note.advisor_name
      advisor_type: consultation_note.advisor_type
      consultation_summary: consultation_note.consultation_summary
      advice_memo: consultation_note.advice_memo
      unresolved_points: consultation_note.unresolved_points
      next_steps: consultation_note.next_steps

  task:
    endpoints:
      - GET /cases/{case_id}/tasks
      - POST /cases/{case_id}/tasks
      - PATCH /cases/{case_id}/tasks/{task_id}
    primary_entity:
      - legal_task
    request_payload_to_entity_fields:
      task_type: legal_task.task_type
      title: legal_task.title
      description: legal_task.description
      assigned_to_role: legal_task.assigned_to_role
      due_date: legal_task.due_date
      status: legal_task.status
      related_document_id_optional: legal_task.related_document_id_optional

  share:
    endpoints:
      - POST /cases/{case_id}/share/grant
      - POST /cases/{case_id}/share/revoke
      - POST /cases/{case_id}/share/export-pack
    primary_entity:
      - case_share_pack
    supporting_entity_candidates:
      - legal_case_share_grant
      - legal_case_visibility_rule
    request_payload_to_entity_fields:
      target_user_id: legal_case_share_grant.target_user_id
      granted_role: legal_case_share_grant.granted_role
      included_sections: legal_case_share_grant.included_sections
      exclude_sensitive_items: legal_case_share_grant.exclude_sensitive_items
      redaction_level: legal_case_share_grant.redaction_level
      pack_type: case_share_pack.pack_type
      format: case_share_pack.format

response_only_objects:
  permissions:
    description:
      - actor と share policy と confidentiality を元に算出する
    persistence:
      - persisted_directly: false
  counts:
    description:
      - stakeholder_count などの集計情報
    persistence:
      - persisted_directly: false
  meta:
    description:
      - pagination と sort 情報
    persistence:
      - persisted_directly: false

entity_relationships:
  legal_case:
    children:
      - stakeholder
      - fact_timeline_event
      - legal_document
      - evidence_item
      - consultation_note
      - legal_task
      - deadline_event
      - case_share_pack
      - legal_case_share_grant_candidate
  reference_links:
      - advisor_contact
  notes:
    - legal_case が aggregate root
    - 子要素は原則 case_id 必須

implementation_notes:
  - permissions と counts を entity に保存しない
  - related_stakeholder_ids は join 管理候補
  - included_sections は array で保持候補
  - redact/export 系は case_share_pack に生成記録を持たせる
