# ============================================================
# SHIFT MANAGER API EXACT PAYLOAD PDF EXTENSION
# ============================================================

status: design-extension
type: api-exact-payload-pdf-extension
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PDF EXPORT REQUEST / RESPONSE
# ============================================================

schedule_pdf_export_request:
{
  "export_type": "draft_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

publication_pdf_export_request:
{
  "export_type": "publication_pdf",
  "layout_type": "weekly_a4",
  "include_memo": true
}

pdf_export_response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "export_type": "publication_pdf",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_001"
  }
}

pdf_export_detail_response:
{
  "ok": true,
  "data": {
    "pdf_export_id": "uuid",
    "schedule_id": "uuid",
    "publication_id": "uuid",
    "export_type": "publication_pdf",
    "layout_type": "weekly_a4",
    "file_name": "shift_2026-04-week2.pdf",
    "storage_path": "shift-manager/pdf/2026/04/shift_2026-04-week2.pdf",
    "page_count": 2,
    "exported_by_person_id": "uuid",
    "generated_at": "2026-04-10T14:00:00+09:00"
  },
  "error": null,
  "meta": {
    "request_id": "req_pdf_export_detail_001"
  }
}

# ============================================================
# 2. ENUMS
# ============================================================

export_type_enum:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

layout_type_enum:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

# ============================================================
# 3. IMPORTANT RULE
# ============================================================

important_rule:
Formal printable distribution should use publication_pdf.

