# ============================================================
# END OF LIFE PLANNER COLUMN AND CONSTRAINT RULES
# ============================================================

status: canonical-draft
phase: L2-db-logical-schema-draft
reviewers:
  - Sato(DB)

common_columns:
  id_columns:
    - *_id: uuid, required
  scope_columns:
    - life_person_id: uuid, required
  audit_columns:
    - created_at: datetime, required where mutable entity
    - updated_at: datetime, required where mutable entity
  lifecycle_columns:
    - record_status: enum(active, archived, deleted_logical), required
  security_columns:
    - sensitivity_class: enum(S1_low, S2_medium, S3_high), required

entity_specific_rules:
  owner_profile:
    - per life_person current profile uniqueness を持つ
  medical_preference:
    - version_no required
    - active current version uniqueness by life_person
  care_preference:
    - version_no required
    - active current version uniqueness by life_person
  funeral_preference:
    - version_no required
    - active current version uniqueness by life_person
  contract_registry:
    - contract_name required
    - provider_name required
  digital_asset_note:
    - password_plaintext_stored must be false
    - export_masking_required default true
    - dangerous password-like pattern reject candidate
  document_registry:
    - storage_location_note required
  family_message:
    - title_text required
    - body_text required
  handoff_document:
    - masking_policy_json required
    - generated_from_scope_json required
  sharing_permission:
    - grantee_family_profile_id required
    - grantee_role required
    - active permission duplicate prohibited
  access_audit_log:
    - append-only
    - occurred_at required

logical_unique_candidates:
  - owner_profile: one current active row per life_person
  - medical_preference: one current active row per life_person
  - care_preference: one current active row per life_person
  - funeral_preference: one current active row per life_person
  - sharing_permission: one active row per (life_person_id, grantee_family_profile_id, grantee_role)
  - checklist_item: one row per (life_person_id, item_code) when seeded_template=true future option

foreign_key_candidates:
  - medical_preference.emergency_contact_reference_id -> emergency_contact.emergency_contact_id
  - contract_registry.responsible_family_profile_id -> family_profile.family_profile_id
  - document_registry.related_family_profile_id -> family_profile.family_profile_id
  - sharing_permission.grantee_family_profile_id -> family_profile.family_profile_id
  - access_audit_log.actor_family_profile_id -> family_profile.family_profile_id optional
  - checklist_item.linked_entity_id -> polymorphic logical reference only

immutability_rules:
  - access_audit_log immutable
  - generated handoff_document content is snapshot-oriented
  - preference history rows are not hard-deleted

deletion_rules:
  - high sensitivity rows are logical delete priority
  - access_audit_log is never deleted in normal flow
  - sharing_permission revoke uses status transition, not hard delete

validation_alignment:
  - payload validation rules must align with column requiredness
  - policy rules override permissive storage
  - dangerous secret input is blocked before persistence
