# ============================================================
# NAMECARDMANAGER VALIDATION / PRIVACY / PERMISSION EXACT
# ============================================================

status: canonical
app: NameCardManager
category: 03.business-app

validation_rules:
person_name:
  required: true
  max_length: 200

company_name:
  required_when_creating_company: true
  max_length: 300

email:
  required: false
  format: email_when_present
  max_length: 320

phone:
  required: false
  format: loose_phone_when_present
  max_length: 80

memo:
  required: false
  max_length: 5000

source_type:
  allowed:
    - camera
    - file_upload
    - manual
    - import

intake_status:
  allowed:
    - draft
    - pending_review
    - extracted
    - approved
    - rejected
    - edit_required

merge_decision:
  allowed:
    - merge
    - keep_separate
    - postpone

privacy_rules:
- Business card images may contain personal information.
- Attachment binary is not CommonOS canon.
- CommonOS may show Attachment UI, but attachment meaning and retention policy remain app-side.
- Do not store DB secrets or service role keys in app metadata.
- Do not send personal data to ERP unless the specific ERP integration route is approved.

permission_rules:
camera:
  required_for:
    - sourceType camera
  fallback:
    - file_upload
    - manual

file_picker:
  required_for:
    - sourceType file_upload

offline_storage:
  required_for:
    - local_draft
    - local_outbox_queue

share_sheet:
  optional_for:
    - export
    - contact sharing

ai_rules:
- OCR / extraction assistance may be used.
- AI extraction result must be reviewable.
- AI must not finalize merge decisions without user or approved workflow confirmation.
- AI prompt canon is not stored in CommonOS.

security_rules:
- No secrets in CommonOS.
- No service role key in app runtime.
- API calls must use approved client boundary.
- RequestId and traceId are required.
