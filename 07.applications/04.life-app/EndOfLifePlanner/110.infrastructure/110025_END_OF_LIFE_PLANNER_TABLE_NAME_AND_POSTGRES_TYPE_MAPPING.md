# ============================================================
# END OF LIFE PLANNER TABLE NAME AND POSTGRES TYPE MAPPING
# ============================================================

status: canonical-draft
phase: L4-sql-mapping-draft
reviewers:
  - Sato(DB)

postgres_type_baseline:
  uuid:
    sql_type: uuid
  short_text:
    sql_type: text
  long_text:
    sql_type: text
  boolean:
    sql_type: boolean
  integer:
    sql_type: integer
  decimal_amount:
    sql_type: numeric(18,2)
  datetime:
    sql_type: timestamptz
  date:
    sql_type: date
  json:
    sql_type: jsonb

table_and_column_type_mapping:

  owner_profile:
    owner_profile_id: uuid
    life_person_id: uuid
    display_name: text
    display_name_kana: text
    birth_date: date
    address_text: text
    emergency_note: text
    language_code: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  emergency_contact:
    emergency_contact_id: uuid
    life_person_id: uuid
    display_name: text
    relationship_label: text
    phone_number: text
    email: text
    priority_order: integer
    contact_note: text
    share_with_family: boolean
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  family_profile:
    family_profile_id: uuid
    life_person_id: uuid
    display_name: text
    relationship_label: text
    phone_number: text
    email: text
    address_text: text
    involvement_scope_note: text
    is_primary_supporter: boolean
    share_with_family: boolean
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  medical_preference:
    medical_preference_id: uuid
    life_person_id: uuid
    version_no: integer
    emergency_contact_reference_id: uuid
    life_support_preference: text
    hospitalization_contact_note: text
    allergy_note: text
    medical_history_note: text
    communication_note: text
    free_text_wish: text
    summary_text: text
    shared_scope_level: text
    effective_from: date
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  care_preference:
    care_preference_id: uuid
    life_person_id: uuid
    version_no: integer
    preferred_care_place: text
    care_priority_note: text
    cost_preference_note: text
    family_message_note: text
    free_text_wish: text
    shared_scope_level: text
    effective_from: date
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  funeral_preference:
    funeral_preference_id: uuid
    life_person_id: uuid
    version_no: integer
    funeral_scale: text
    religion_or_style_note: text
    burial_preference_note: text
    memorial_note: text
    estimated_cost_amount: numeric(18,2)
    estimated_cost_currency: text
    contact_candidate_note: text
    shared_scope_level: text
    effective_from: date
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  contract_registry:
    contract_registry_id: uuid
    life_person_id: uuid
    contract_name: text
    provider_name: text
    contract_category: text
    billing_cycle: text
    amount_value: numeric(18,2)
    amount_currency: text
    payment_method_note: text
    cancellation_required: boolean
    contract_document_location_note: text
    responsible_family_profile_id: uuid
    status_note: text
    share_with_family: boolean
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  digital_asset_note:
    digital_asset_note_id: uuid
    life_person_id: uuid
    service_name: text
    asset_category: text
    location_hint_note: text
    procedure_note: text
    account_identifier_hint: text
    password_plaintext_stored: boolean
    export_masking_required: boolean
    share_scope_level: text
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  document_registry:
    document_registry_id: uuid
    life_person_id: uuid
    document_name: text
    document_category: text
    storage_type: text
    storage_location_note: text
    related_family_profile_id: uuid
    share_with_family: boolean
    note_text: text
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  family_message:
    family_message_id: uuid
    life_person_id: uuid
    target_scope: text
    title_text: text
    body_text: text
    attachment_count: integer
    open_condition: text
    summary_text: text
    sensitivity_class: text
    record_status: text
    created_at: timestamptz
    updated_at: timestamptz

  handoff_document:
    handoff_document_id: uuid
    life_person_id: uuid
    document_type: text
    generated_from_scope_json: jsonb
    masking_policy_json: jsonb
    output_language_code: text
    output_format: text
    generated_at: timestamptz
    generated_by_role: text
    download_count: integer
    last_downloaded_at: timestamptz
    sensitivity_class: text
    record_status: text

  sharing_permission:
    sharing_permission_id: uuid
    life_person_id: uuid
    grantee_family_profile_id: uuid
    grantee_role: text
    visible_categories_json: jsonb
    editable_categories_json: jsonb
    export_allowed: boolean
    attachment_view_allowed: boolean
    expires_at: timestamptz
    permission_status: text
    sensitivity_class: text
    created_at: timestamptz
    updated_at: timestamptz

  checklist_item:
    checklist_item_id: uuid
    life_person_id: uuid
    checklist_category: text
    item_code: text
    item_label: text
    completion_status: text
    priority_level: text
    linked_entity_type: text
    linked_entity_id: uuid
    note_text: text
    sensitivity_class: text
    created_at: timestamptz
    updated_at: timestamptz

  access_audit_log:
    access_audit_log_id: uuid
    life_person_id: uuid
    actor_role: text
    actor_family_profile_id: uuid
    action_type: text
    target_entity_type: text
    target_entity_id: uuid
    action_result: text
    action_note: text
    occurred_at: timestamptz
    sensitivity_class: text

type_mapping_notes:
  - 金額は numeric(18,2) を基本候補とする
  - 多通貨は amount_currency / estimated_cost_currency で保持する
  - text enum は check constraint で統制する
  - jsonb は UI 設定系と snapshot 系に限定する
