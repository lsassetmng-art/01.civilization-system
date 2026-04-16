# ============================================================
# END OF LIFE PLANNER ENTITY RELATIONS
# ============================================================

status: canonical-draft
phase: L2-db-logical-schema-draft
reviewers:
  - Sato(DB)

root_scope:
  life_person_id:
    meaning: owner 本人の終活データスコープ
    required: true

entity_relations:
  owner_profile:
    cardinality:
      - one life_person has one current owner_profile
    notes:
      - 完全削除ではなく非表示/論理削除優先

  emergency_contact:
    cardinality:
      - one life_person has many emergency_contact

  family_profile:
    cardinality:
      - one life_person has many family_profile

  medical_preference:
    cardinality:
      - one life_person has many medical_preference versions
      - one emergency_contact may be referenced by many medical_preference records
    notes:
      - latest active version を業務上の現行版とする

  care_preference:
    cardinality:
      - one life_person has many care_preference versions
    notes:
      - latest active version を業務上の現行版とする

  funeral_preference:
    cardinality:
      - one life_person has many funeral_preference versions
    notes:
      - latest active version を業務上の現行版とする

  contract_registry:
    cardinality:
      - one life_person has many contract_registry
      - one family_profile may be responsible for many contract_registry
    notes:
      - subscription は contract_category=subscription で表現する

  digital_asset_note:
    cardinality:
      - one life_person has many digital_asset_note
    notes:
      - viewer 向け表示は masked 前提

  document_registry:
    cardinality:
      - one life_person has many document_registry
      - one family_profile may relate to many document_registry

  family_message:
    cardinality:
      - one life_person has many family_message

  handoff_document:
    cardinality:
      - one life_person has many handoff_document
    notes:
      - generated_from_scope_json と masking_policy_json を保持する

  sharing_permission:
    cardinality:
      - one life_person has many sharing_permission
      - one family_profile may receive many sharing_permission entries
    notes:
      - active permission の重複禁止を設ける

  checklist_item:
    cardinality:
      - one life_person has many checklist_item
      - one checklist_item may optionally reference one target entity

  access_audit_log:
    cardinality:
      - one life_person has many access_audit_log
    notes:
      - any_entity reference optional
      - append-only

cross_entity_rules:
  - family_viewer / delegated_editor の可視範囲は sharing_permission を唯一の正とする
  - S3_high entity は export 前に masking_policy を必須確認する
  - handoff_document 生成時は source entity の共有可否判定後に収集する
  - access_audit_log は view / export / permission_change / attachment_play / create / update / logical_delete を対象とする
