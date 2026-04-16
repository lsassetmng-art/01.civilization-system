# ============================================================
# END OF LIFE PLANNER FORMAL API SPECIFICATION
# ============================================================

status: canonical-draft
phase: L7-formal-screen-api-physicaldb-design
type: formal-api-specification

document_purpose:
  - EndOfLifePlanner の API 契約を正式化する
  - endpoint の責務、入力、出力、権限境界、warning/error を整理する
  - 実装前に contract を固定する

common_request_context:
  required:
    - actor_role
    - life_person_id
    - request_id
    - language_code
    - device_type
  optional:
    - actor_id

common_response_context:
  required:
    - success
    - server_time
    - request_id
  optional:
    - error_code
    - error_message
    - response_warning_messages

api_groups:

  dashboard_group:
    endpoints:
      - name: eol.home.summary.get
        purpose: ホーム集約表示取得
        actor_roles:
          - owner
          - delegated_editor limited
        returns:
          - progress_summary
          - recent_updates
          - sharing_status limited
          - alerts

  owner_profile_group:
    endpoints:
      - name: eol.owner_profile.get
        purpose: 本人情報取得
        actor_roles:
          - owner
          - delegated_editor conditional
      - name: eol.owner_profile.save
        purpose: 本人情報保存
        actor_roles:
          - owner
          - delegated_editor conditional

  emergency_contact_group:
    endpoints:
      - name: eol.emergency_contact.list
      - name: eol.emergency_contact.create
      - name: eol.emergency_contact.update
      - name: eol.emergency_contact.delete
    actor_roles:
      list:
        - owner
        - family_viewer shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional

  family_profile_group:
    endpoints:
      - name: eol.family_profile.list
      - name: eol.family_profile.save
    actor_roles:
      read:
        - owner
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional

  medical_preference_group:
    endpoints:
      - name: eol.medical_preference.get_latest
      - name: eol.medical_preference.save_new_version
    actor_roles:
      read:
        - owner
        - family_viewer shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional
    notes:
      - save は新version作成前提
      - EOL_WARN_NON_MEDICAL 対象

  care_preference_group:
    endpoints:
      - name: eol.care_preference.get_latest
      - name: eol.care_preference.save_new_version
    actor_roles:
      read:
        - owner
        - family_viewer shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional

  funeral_preference_group:
    endpoints:
      - name: eol.funeral_preference.get_latest
      - name: eol.funeral_preference.save_new_version
    actor_roles:
      read:
        - owner
        - family_viewer shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional

  contract_registry_group:
    endpoints:
      - name: eol.contract_registry.list
      - name: eol.contract_registry.save
      - name: eol.subscription_registry.list
    actor_roles:
      read:
        - owner
        - family_viewer shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional

  digital_asset_group:
    endpoints:
      - name: eol.digital_asset_note.list
      - name: eol.digital_asset_note.save
    actor_roles:
      read:
        - owner
        - family_viewer masked_shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional
    notes:
      - EOL_VALID_003 / EOL_SAFE_002 対象
      - export masked only

  document_registry_group:
    endpoints:
      - name: eol.document_registry.list
      - name: eol.document_registry.save
      - name: eol.important_locations.summary.get
    actor_roles:
      read:
        - owner
        - family_viewer shared_only
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional

  family_message_group:
    endpoints:
      - name: eol.family_message.list
      - name: eol.family_message.save
      - name: eol.family_message.attachment.upload
      - name: eol.family_message.attachment.list
    actor_roles:
      read:
        - owner
        - family_viewer open_condition and permission based
        - delegated_editor conditional
      write:
        - owner
        - delegated_editor conditional limited
      attachment_upload:
        - owner only

  handoff_group:
    endpoints:
      - name: eol.handoff_document.preview
      - name: eol.handoff_document.generate
      - name: eol.handoff_document.list
    actor_roles:
      preview:
        - owner only
      generate:
        - owner only
      list:
        - owner
        - family_viewer allowed_only
    notes:
      - preview before generate
      - masking required
      - EOL_WARN_MASK_RECOMMENDED / EOL_WARN_NOT_CERTIFICATE 対象

  checklist_group:
    endpoints:
      - name: eol.checklist_item.list
      - name: eol.checklist_item.update
    actor_roles:
      list:
        - owner
        - family_viewer limited
        - delegated_editor conditional
      update:
        - owner
        - delegated_editor conditional

  sharing_group:
    endpoints:
      - name: eol.sharing_permission.list
      - name: eol.sharing_permission.save
      - name: eol.sharing_permission.revoke
      - name: eol.shared_scope.dashboard.get
      - name: eol.shared_scope.detail.get
    actor_roles:
      owner_config:
        - owner only
      viewer_scope_read:
        - family_viewer only
    notes:
      - eol_sharing_permission is source of truth

  audit_group:
    endpoints:
      - name: eol.access_audit_log.list
    actor_roles:
      - owner only

  linkage_group:
    endpoints:
      - name: eol.inheritance_gateway.summary.get
      - name: eol.inheritance_gateway.open
      - name: eol.legal_gateway.open
    actor_roles:
      - owner
      - family_viewer limited
    notes:
      - 専門家判断確定ではない
      - EOL_WARN_NON_LEGAL 対象

  settings_group:
    endpoints:
      - name: eol.settings.get
      - name: eol.settings.save
    actor_roles:
      - owner only

error_warning_policy:
  errors:
    - EOL_AUTH_001
    - EOL_AUTH_002
    - EOL_VALID_001
    - EOL_VALID_002
    - EOL_VALID_003
    - EOL_DATA_001
    - EOL_DATA_002
    - EOL_SHARE_001
    - EOL_EXPORT_001
    - EOL_EXPORT_002
    - EOL_SYSTEM_001
    - EOL_SAFE_001
    - EOL_SAFE_002
    - EOL_SAFE_003
  warnings:
    - EOL_WARN_NON_MEDICAL
    - EOL_WARN_NON_LEGAL
    - EOL_WARN_NOT_CERTIFICATE
    - EOL_WARN_MASK_RECOMMENDED
    - EOL_WARN_FUNERAL_CONTEXT

api_contract_status:
  fixed:
    - endpoint responsibility grouping
    - actor role boundary
    - warning / error family
  remaining_minor_review:
    - exact endpoint naming final review
    - exact response shape final polish
