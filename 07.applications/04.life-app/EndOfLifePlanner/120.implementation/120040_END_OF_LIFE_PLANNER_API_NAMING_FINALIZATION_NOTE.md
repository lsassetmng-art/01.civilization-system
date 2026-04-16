# ============================================================
# END OF LIFE PLANNER API NAMING FINALIZATION NOTE
# ============================================================

status: canonical-draft
phase: L9-open-points-closure
type: api-naming-finalization

document_purpose:
  - endpoint naming を最終固定する
  - group / action / intent を一貫した命名に揃える
  - 実装前契約として名称ぶれを止める

naming_principles:
  - prefix は eol.
  - entity_or_feature.action.intent の順で揃える
  - list / get / save / create / update / delete / preview / generate / revoke を基本語とする
  - save_new_version は version 管理 entity のみに使う
  - summary.get は集約取得に限定する
  - gateway.open は外部導線呼び出しに限定する

final_endpoint_names:

  dashboard:
    - eol.home.summary.get

  owner_profile:
    - eol.owner_profile.get
    - eol.owner_profile.save

  emergency_contact:
    - eol.emergency_contact.list
    - eol.emergency_contact.create
    - eol.emergency_contact.update
    - eol.emergency_contact.delete

  family_profile:
    - eol.family_profile.list
    - eol.family_profile.save

  medical_preference:
    - eol.medical_preference.get_latest
    - eol.medical_preference.save_new_version

  care_preference:
    - eol.care_preference.get_latest
    - eol.care_preference.save_new_version

  funeral_preference:
    - eol.funeral_preference.get_latest
    - eol.funeral_preference.save_new_version

  contract_registry:
    - eol.contract_registry.list
    - eol.contract_registry.save

  subscription_registry:
    - eol.subscription_registry.list

  digital_asset_note:
    - eol.digital_asset_note.list
    - eol.digital_asset_note.save

  document_registry:
    - eol.document_registry.list
    - eol.document_registry.save

  important_locations:
    - eol.important_locations.summary.get

  family_message:
    - eol.family_message.list
    - eol.family_message.save
    - eol.family_message.attachment.upload
    - eol.family_message.attachment.list

  handoff_document:
    - eol.handoff_document.preview
    - eol.handoff_document.generate
    - eol.handoff_document.list

  checklist_item:
    - eol.checklist_item.list
    - eol.checklist_item.update

  sharing_permission:
    - eol.sharing_permission.list
    - eol.sharing_permission.save
    - eol.sharing_permission.revoke

  shared_scope:
    - eol.shared_scope.dashboard.get
    - eol.shared_scope.detail.get

  access_audit_log:
    - eol.access_audit_log.list

  inheritance_gateway:
    - eol.inheritance_gateway.summary.get
    - eol.inheritance_gateway.open

  legal_gateway:
    - eol.legal_gateway.open

  settings:
    - eol.settings.get
    - eol.settings.save

naming_closed_points:
  - endpoint naming fixed
  - no further alias endpoints planned in design phase

remaining_non_naming_api_points:
  - exact response shape polish only
  - warning attachment detail polish only
