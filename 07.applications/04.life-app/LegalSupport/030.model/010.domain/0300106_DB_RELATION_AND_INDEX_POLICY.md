
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# DB RELATION AND INDEX POLICY
# ============================================================

status: canonical-draft
phase: db-exact-fixed
system: life-app
app: LegalSupport
schema_name: life

foreign_key_policy:
  - すべての子 table は case_id を基点とする
  - advisor_contact のみ owner_user_id 基点を許容する
  - 中間 table は親子双方に fk を持つ
  - share / export 系も case_id 基点でぶら下げる

relations:
  - child: stakeholder.case_id
    parent: legal_case.case_id
  - child: fact_timeline_event.case_id
    parent: legal_case.case_id
  - child: legal_document.case_id
    parent: legal_case.case_id
  - child: evidence_item.case_id
    parent: legal_case.case_id
  - child: consultation_note.case_id
    parent: legal_case.case_id
  - child: legal_task.case_id
    parent: legal_case.case_id
  - child: deadline_event.case_id
    parent: legal_case.case_id
  - child: case_share_grant.case_id
    parent: legal_case.case_id
  - child: case_share_pack.case_id
    parent: legal_case.case_id
  - child: fact_timeline_event.source_document_id
    parent: legal_document.legal_document_id
  - child: legal_task.related_document_id
    parent: legal_document.legal_document_id
  - child: fact_timeline_event_stakeholder.timeline_event_id
    parent: fact_timeline_event.timeline_event_id
  - child: fact_timeline_event_stakeholder.stakeholder_id
    parent: stakeholder.stakeholder_id

uniqueness_policy:
  - case_share_grant は case_id + target_user_id + is_active=true の重複を防ぐ
  - fact_timeline_event_stakeholder は timeline_event_id + stakeholder_id の重複を防ぐ
  - advisor_contact は owner_user_id + display_name + advisor_type の重複候補を警告対象にする

recommended_indexes:
  legal_case:
    - idx_legal_case_owner_updated_at on (owner_user_id, updated_at desc)
    - idx_legal_case_owner_status on (owner_user_id, status)
    - idx_legal_case_owner_category on (owner_user_id, category)
    - idx_legal_case_owner_archive_flag on (owner_user_id, archive_flag)

  stakeholder:
    - idx_stakeholder_case_id on (case_id)
    - idx_stakeholder_case_type on (case_id, stakeholder_type)

  fact_timeline_event:
    - idx_timeline_case_event_date on (case_id, event_date asc)
    - idx_timeline_case_fact_confidence on (case_id, fact_confidence)

  fact_timeline_event_stakeholder:
    - uq_timeline_event_stakeholder on (timeline_event_id, stakeholder_id)

  legal_document:
    - idx_document_case_id on (case_id)
    - idx_document_case_category on (case_id, document_category)
    - idx_document_case_confidentiality on (case_id, confidentiality_level)

  evidence_item:
    - idx_evidence_case_id on (case_id)
    - idx_evidence_case_confidentiality on (case_id, confidentiality_level)

  consultation_note:
    - idx_consultation_case_consulted_at on (case_id, consulted_at desc)

  legal_task:
    - idx_task_case_due_date on (case_id, due_date asc)
    - idx_task_case_status on (case_id, status)

  deadline_event:
    - idx_deadline_case_due_date on (case_id, due_date asc)
    - idx_deadline_case_completion on (case_id, completion_flag)

  advisor_contact:
    - idx_advisor_owner_type on (owner_user_id, advisor_type)
    - idx_advisor_owner_updated_at on (owner_user_id, updated_at desc)

  case_share_grant:
    - idx_share_grant_case_id on (case_id)
    - idx_share_grant_target_user_id on (target_user_id)
    - idx_share_grant_case_active on (case_id, is_active)

  case_share_pack:
    - idx_share_pack_case_generated_at on (case_id, generated_at desc)
    - idx_share_pack_case_status on (case_id, artifact_status)

search_policy:
  initial_scope:
    - title
    - summary
    - stakeholder.name
    - legal_document.title
    - consultation_note.consultation_summary
    - legal_task.title
  first_step:
    - btree + ilike ベースを想定
  future_step:
    - full text index 拡張候補

delete_policy:
  - legal_case の物理削除は原則避ける
  - archive_flag で論理アーカイブを優先する
  - share_grant は revoke により inactive 化を優先する
  - share_pack は生成履歴保持を優先する

audit_recommendations:
  - share grant created
  - share revoked
  - high confidentiality document viewed
  - export pack generated
  - export pack regenerated

notes:
  - local first 前提でも relation 名称は server 同期を見据えて固定する
  - 初期は jsonb を使って柔軟性を確保し、後で正規化可能にする
