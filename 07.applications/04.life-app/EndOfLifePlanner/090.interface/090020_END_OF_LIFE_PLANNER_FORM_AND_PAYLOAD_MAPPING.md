# ============================================================
# END OF LIFE PLANNER FORM AND PAYLOAD MAPPING
# ============================================================

status: canonical-draft
phase: L1-spec-placement

payload_map:
  eol_owner_profile:
    - eol.owner_profile.get
    - eol.owner_profile.save
  eol_emergency_contacts:
    - eol.emergency_contact.list
    - eol.emergency_contact.create
    - eol.emergency_contact.update
    - eol.emergency_contact.delete
  eol_medical_preferences:
    - eol.medical_preference.get_latest
    - eol.medical_preference.save_new_version
  eol_care_preferences:
    - eol.care_preference.get_latest
    - eol.care_preference.save_new_version
  eol_funeral_preferences:
    - eol.funeral_preference.get_latest
    - eol.funeral_preference.save_new_version
  eol_contract_registry:
    - eol.contract_registry.list
    - eol.contract_registry.save
  eol_digital_assets:
    - eol.digital_asset_note.list
    - eol.digital_asset_note.save
  eol_document_registry:
    - eol.document_registry.list
    - eol.document_registry.save
  eol_handoff_pack:
    - eol.handoff_document.preview
    - eol.handoff_document.generate
