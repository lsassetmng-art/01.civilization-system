# ============================================================
# PERSISTENCE OPERATION POLICY
# ============================================================

status: canonical-draft
phase: db-exact-fixed
system: life-app
app: LegalSupport

write_policy:
  create_case:
    - legal_case insert
  update_case:
    - legal_case update
  create_stakeholder:
    - stakeholder insert
  create_timeline_event:
    - fact_timeline_event insert
    - fact_timeline_event_stakeholder insert optional
  create_document:
    - binary save optional
    - legal_document insert
  create_evidence:
    - binary save optional
    - evidence_item insert
  create_consultation:
    - consultation_note insert
  create_task:
    - legal_task insert
  create_deadline:
    - deadline_event insert
  grant_share:
    - case_share_grant insert
  revoke_share:
    - case_share_grant update is_active=false
    - revoked_at set
  generate_share_pack:
    - export binary save
    - case_share_pack insert

update_policy:
  - updated_at は update 対象 table で必ず更新する
  - 差替 binary は新 reference 発行を優先する
  - revoke は delete ではなく inactive update を優先する
  - archive は legal_case.archive_flag で表現する

read_policy:
  list_reads:
    - case_id または owner_user_id 起点
  detail_reads:
    - case_id 起点で aggregate 組み立て
  permission_reads:
    - legal_case
    - case_share_grant
    - confidentiality_level
  binary_reads:
    - metadata 判定後に binary 参照

consistency_policy:
  - case 子要素は必ず既存 case_id に紐づく
  - source_document_id は存在確認を行う
  - related_document_id は存在確認を行う
  - timeline_event_stakeholder は親 event と stakeholder の両方存在時のみ作成

soft_delete_policy:
  - legal_case は archive 優先
  - share_grant は inactive 優先
  - share_pack は履歴保持優先
  - document/evidence は metadata 残し候補を許容

sync_readiness_policy:
  - uuid 主キー固定
  - created_at / updated_at 必須
  - binary reference を不変キー寄りで扱う
  - owner_user_id / case_id を同期境界の基本キーにする

audit_targets:
  - create_case
  - update_case
  - create_document
  - replace_document_binary
  - grant_share
  - revoke_share
  - generate_share_pack
  - regenerate_share_pack

next_step_handoff:
  - この方針をもとに DDL 正本へ落とせる
  - psql 用 create table / index / fk を次段で生成する
