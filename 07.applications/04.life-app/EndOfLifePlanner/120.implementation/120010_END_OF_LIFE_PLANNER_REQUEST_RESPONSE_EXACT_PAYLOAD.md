# ============================================================
# END OF LIFE PLANNER REQUEST RESPONSE EXACT PAYLOAD
# ============================================================

status: canonical-draft
phase: L1-spec-placement

common_request_headers:
  - actor_role
  - actor_id
  - life_person_id
  - request_id
  - language_code
  - device_type

representative_endpoints:
  - eol.owner_profile.get
  - eol.owner_profile.save
  - eol.medical_preference.get_latest
  - eol.medical_preference.save_new_version
  - eol.contract_registry.list
  - eol.contract_registry.save
  - eol.document_registry.list
  - eol.document_registry.save
  - eol.handoff_document.preview
  - eol.handoff_document.generate

common_response_fields:
  - success
  - error_code
  - error_message
  - server_time
  - request_id
