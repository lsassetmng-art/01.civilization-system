# ============================================================
# DOCUMENT AND CONSULTATION API EXACT PAYLOAD
# ============================================================

status: canonical-draft

endpoints:
  document:
    - GET /api/life-app/legal-support/v1/cases/{case_id}/documents
    - POST /api/life-app/legal-support/v1/cases/{case_id}/documents
    - PATCH /api/life-app/legal-support/v1/cases/{case_id}/documents/{document_id}
  consultation:
    - GET /api/life-app/legal-support/v1/cases/{case_id}/consultations
    - POST /api/life-app/legal-support/v1/cases/{case_id}/consultations
    - PATCH /api/life-app/legal-support/v1/cases/{case_id}/consultations/{consultation_note_id}

document_list_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_document_list_001",
      "server_time": "2026-04-14T20:30:00+09:00",
      "data": {
        "documents": [
          {
            "legal_document_id": "doc_001",
            "document_category": "family_register",
            "title": "戸籍謄本",
            "issuer": "市役所",
            "issued_on": "2026-04-05",
            "expiry_date_optional": null,
            "storage_location_note": "紙原本は自宅金庫",
            "file_reference": "file_001",
            "reviewed_flag": false,
            "confidentiality_level": "sensitive"
          }
        ]
      },
      "meta": {
        "page": 1,
        "page_size": 50,
        "total_count": 1,
        "has_next": false,
        "sort": {
          "field": "issued_on",
          "direction": "desc"
        }
      },
      "errors": []
    }

document_create_request:
  json: |
    {
      "request_id": "req_document_create_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "document_category": "family_register",
        "title": "戸籍謄本",
        "issuer": "市役所",
        "issued_on": "2026-04-05",
        "expiry_date_optional": null,
        "storage_location_note": "紙原本は自宅金庫",
        "file_reference": "file_001",
        "reviewed_flag": false,
        "confidentiality_level": "sensitive"
      }
    }

document_update_request:
  json: |
    {
      "request_id": "req_document_update_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "reviewed_flag": true,
        "storage_location_note": "原本確認済み。自宅金庫上段。"
      }
    }

consultation_list_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_consultation_list_001",
      "server_time": "2026-04-14T20:31:00+09:00",
      "data": {
        "consultations": [
          {
            "consultation_note_id": "con_001",
            "consulted_at": "2026-04-10T14:00:00+09:00",
            "advisor_name": "山田法律事務所",
            "advisor_type": "lawyer",
            "consultation_summary": "相続人範囲と必要資料について相談",
            "advice_memo": "戸籍と不動産資料を優先確認",
            "unresolved_points": "遺言原本の所在未確認",
            "next_steps": "書類確認後に再相談"
          }
        ]
      },
      "meta": {
        "page": 1,
        "page_size": 50,
        "total_count": 1,
        "has_next": false,
        "sort": {
          "field": "consulted_at",
          "direction": "desc"
        }
      },
      "errors": []
    }

consultation_create_request:
  json: |
    {
      "request_id": "req_consultation_create_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "consulted_at": "2026-04-10T14:00:00+09:00",
        "advisor_name": "山田法律事務所",
        "advisor_type": "lawyer",
        "consultation_summary": "相続人範囲と必要資料について相談",
        "advice_memo": "戸籍と不動産資料を優先確認",
        "unresolved_points": "遺言原本の所在未確認",
        "next_steps": "書類確認後に再相談"
      }
    }

consultation_update_request:
  json: |
    {
      "request_id": "req_consultation_update_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "unresolved_points": "遺言原本の所在未確認 / 預金口座一覧未整理",
        "next_steps": "戸籍、登記、不動産資料を揃えて再相談"
      }
    }
