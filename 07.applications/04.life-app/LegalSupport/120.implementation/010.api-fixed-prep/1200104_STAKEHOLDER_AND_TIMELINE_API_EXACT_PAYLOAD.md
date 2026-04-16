# ============================================================
# STAKEHOLDER AND TIMELINE API EXACT PAYLOAD
# ============================================================

status: canonical-draft

endpoints:
  stakeholder:
    - GET /api/life-app/legal-support/v1/cases/{case_id}/stakeholders
    - POST /api/life-app/legal-support/v1/cases/{case_id}/stakeholders
    - PATCH /api/life-app/legal-support/v1/cases/{case_id}/stakeholders/{stakeholder_id}
  timeline:
    - GET /api/life-app/legal-support/v1/cases/{case_id}/timeline
    - POST /api/life-app/legal-support/v1/cases/{case_id}/timeline
    - PATCH /api/life-app/legal-support/v1/cases/{case_id}/timeline/{timeline_event_id}

stakeholder_list_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_stakeholder_list_001",
      "server_time": "2026-04-14T20:20:00+09:00",
      "data": {
        "stakeholders": [
          {
            "stakeholder_id": "stk_001",
            "name": "母",
            "stakeholder_type": "family",
            "relation_to_owner": "親",
            "contact_note": "同居",
            "role_note": "相続候補者",
            "importance_flag": true
          }
        ]
      },
      "meta": {
        "page": 1,
        "page_size": 50,
        "total_count": 1,
        "has_next": false,
        "sort": {
          "field": "created_at",
          "direction": "asc"
        }
      },
      "errors": []
    }

stakeholder_create_request:
  json: |
    {
      "request_id": "req_stakeholder_create_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "name": "母",
        "stakeholder_type": "family",
        "relation_to_owner": "親",
        "contact_note": "同居",
        "role_note": "相続候補者",
        "importance_flag": true
      }
    }

stakeholder_update_request:
  json: |
    {
      "request_id": "req_stakeholder_update_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "contact_note": "別居予定あり",
        "role_note": "相続候補者 / 確認要"
      }
    }

timeline_list_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_timeline_list_001",
      "server_time": "2026-04-14T20:21:00+09:00",
      "data": {
        "events": [
          {
            "timeline_event_id": "tle_001",
            "event_date": "2026-04-02",
            "event_time_optional": null,
            "title": "遺言の有無について家族で確認",
            "detail": "母から口頭で確認した内容",
            "fact_confidence": "likely",
            "source_type": "conversation",
            "source_document_id_optional": null,
            "related_stakeholder_ids": ["stk_001"]
          }
        ]
      },
      "meta": {
        "page": 1,
        "page_size": 100,
        "total_count": 1,
        "has_next": false,
        "sort": {
          "field": "event_date",
          "direction": "asc"
        }
      },
      "errors": []
    }

timeline_create_request:
  json: |
    {
      "request_id": "req_timeline_create_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "event_date": "2026-04-02",
        "event_time_optional": null,
        "title": "遺言の有無について家族で確認",
        "detail": "母から口頭で確認した内容",
        "fact_confidence": "likely",
        "source_type": "conversation",
        "source_document_id_optional": null,
        "related_stakeholder_ids": ["stk_001"]
      }
    }

timeline_update_request:
  json: |
    {
      "request_id": "req_timeline_update_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "detail": "母の記憶による口頭情報。原本未確認。",
        "fact_confidence": "uncertain"
      }
    }
