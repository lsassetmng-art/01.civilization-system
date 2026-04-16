# ============================================================
# LEGAL SUPPORT DOCUMENT METADATA EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

# ------------------------------------------------------------
# 1. create extended document_item
# ------------------------------------------------------------
create_document_item_extended:
  request:
    action: create_document_item_extended
    payload:
      legal_case_id: uuid
      document_category: enum[id, contract, letter, receipt, certificate, family_record, property_record, consultation_material, other]
      document_subcategory: string|null
      document_name: string
      possession_status: enum[have, need_to_get, unavailable]
      submission_status: enum[not_required, pending, submitted]
      important_flag: boolean
      shared_flag: boolean
      issuer_name: string|null
      issued_on: date|null
      valid_until: date|null
      related_person_name: string|null
      external_reference: string|null
      storage_location_note: string|null
      confidentiality_level: enum[normal, sensitive, private]
      acquisition_due_date: date|null
      submission_due_date: date|null
      verification_note: string|null
      note: string|null
  response:
    document_item:
      document_item_id: uuid
      legal_case_id: uuid
      document_category: string
      document_subcategory: string|null
      document_name: string
      possession_status: string
      submission_status: string
      important_flag: boolean
      shared_flag: boolean
      issuer_name: string|null
      issued_on: date|null
      valid_until: date|null
      related_person_name: string|null
      external_reference: string|null
      storage_location_note: string|null
      confidentiality_level: string
      acquisition_due_date: date|null
      submission_due_date: date|null
      last_verified_at: timestamptz|null
      verification_note: string|null
      note: string|null
      created_at: timestamptz
      updated_at: timestamptz

# ------------------------------------------------------------
# 2. update extended document_item
# ------------------------------------------------------------
update_document_item_extended:
  request:
    action: update_document_item_extended
    payload:
      document_item_id: uuid
      document_category: string
      document_subcategory: string|null
      document_name: string
      possession_status: string
      submission_status: string
      important_flag: boolean
      shared_flag: boolean
      issuer_name: string|null
      issued_on: date|null
      valid_until: date|null
      related_person_name: string|null
      external_reference: string|null
      storage_location_note: string|null
      confidentiality_level: string
      acquisition_due_date: date|null
      submission_due_date: date|null
      verification_note: string|null
      note: string|null
  response:
    document_item:
      document_item_id: uuid
      updated_at: timestamptz

# ------------------------------------------------------------
# 3. mark document verified
# ------------------------------------------------------------
mark_document_verified:
  request:
    action: mark_document_verified
    payload:
      document_item_id: uuid
      verification_note: string|null
  response:
    document_item:
      document_item_id: uuid
      last_verified_at: timestamptz
      verification_note: string|null
      updated_at: timestamptz

rules:
  - confidentiality_level=private の場合 shared_flag=true は通常拒否
  - submission_due_date は document metadata として持つが、正式期限は deadline_item を優先する
  - mark_document_verified は owner のみ
