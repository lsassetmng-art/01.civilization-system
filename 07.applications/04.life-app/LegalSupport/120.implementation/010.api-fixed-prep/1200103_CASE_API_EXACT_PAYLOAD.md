# ============================================================
# CASE API EXACT PAYLOAD
# ============================================================

status: canonical-draft

endpoints:
  - GET /api/life-app/legal-support/v1/cases
  - GET /api/life-app/legal-support/v1/cases/{case_id}
  - POST /api/life-app/legal-support/v1/cases
  - PATCH /api/life-app/legal-support/v1/cases/{case_id}
  - POST /api/life-app/legal-support/v1/cases/{case_id}/archive

case_list_request:
  json: |
    {
      "request_id": "req_case_list_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "filters": {
          "category": ["inheritance", "family"],
          "status": ["active", "waiting"],
          "shared_only": false,
          "keyword": "遺言"
        },
        "sort": {
          "field": "updated_at",
          "direction": "desc"
        },
        "page": 1,
        "page_size": 20
      }
    }

case_list_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_case_list_001",
      "server_time": "2026-04-14T20:10:00+09:00",
      "data": {
        "cases": [
          {
            "case_id": "case_001",
            "title": "父の相続準備",
            "category": "inheritance",
            "summary": "財産一覧と遺言有無の整理",
            "status": "active",
            "importance_level": "high",
            "next_action_summary": "戸籍確認",
            "updated_at": "2026-04-14T19:30:00+09:00",
            "deadline_count": 2,
            "task_open_count": 4,
            "permissions": {
              "can_view": true,
              "can_edit": true,
              "can_delete": true,
              "can_share": true,
              "can_export": true,
              "can_manage_sensitive_items": true
            }
          }
        ]
      },
      "meta": {
        "page": 1,
        "page_size": 20,
        "total_count": 1,
        "has_next": false,
        "sort": {
          "field": "updated_at",
          "direction": "desc"
        }
      },
      "errors": []
    }

case_detail_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_case_detail_001",
      "server_time": "2026-04-14T20:11:00+09:00",
      "data": {
        "case": {
          "case_id": "case_001",
          "owner_user_id": "user_001",
          "title": "父の相続準備",
          "category": "inheritance",
          "summary": "財産一覧と遺言有無の整理",
          "status": "active",
          "importance_level": "high",
          "started_on": "2026-04-01",
          "last_updated_at": "2026-04-14T19:30:00+09:00",
          "next_action_summary": "戸籍確認",
          "share_policy": {
            "share_scope": "private",
            "confidentiality_level": "normal",
            "redaction_default": "family_safe"
          },
          "permissions": {
            "can_view": true,
            "can_edit": true,
            "can_delete": true,
            "can_share": true,
            "can_export": true,
            "can_manage_sensitive_items": true
          },
          "counts": {
            "stakeholder_count": 3,
            "timeline_count": 5,
            "document_count": 8,
            "consultation_count": 1,
            "task_open_count": 4,
            "deadline_open_count": 2
          }
        }
      },
      "meta": {},
      "errors": []
    }

case_create_request:
  json: |
    {
      "request_id": "req_case_create_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "title": "父の相続準備",
        "category": "inheritance",
        "summary": "財産一覧と遺言有無の整理",
        "importance_level": "high",
        "started_on": "2026-04-01",
        "next_action_summary": "戸籍確認"
      }
    }

case_create_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_case_create_001",
      "server_time": "2026-04-14T20:12:00+09:00",
      "data": {
        "case": {
          "case_id": "case_001",
          "title": "父の相続準備",
          "category": "inheritance",
          "summary": "財産一覧と遺言有無の整理",
          "status": "draft",
          "importance_level": "high",
          "started_on": "2026-04-01",
          "last_updated_at": "2026-04-14T20:12:00+09:00",
          "next_action_summary": "戸籍確認"
        }
      },
      "meta": {},
      "errors": []
    }

case_update_request:
  json: |
    {
      "request_id": "req_case_update_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "summary": "財産一覧、遺言有無、関係者整理",
        "status": "active",
        "next_action_summary": "戸籍と不動産資料を確認"
      }
    }

case_update_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_case_update_001",
      "server_time": "2026-04-14T20:13:00+09:00",
      "data": {
        "updated": true,
        "case_id": "case_001",
        "last_updated_at": "2026-04-14T20:13:00+09:00"
      },
      "meta": {},
      "errors": []
    }

case_archive_request:
  json: |
    {
      "request_id": "req_case_archive_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "archive_reason": "resolved"
      }
    }

case_archive_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_case_archive_001",
      "server_time": "2026-04-14T20:14:00+09:00",
      "data": {
        "archived": true,
        "case_id": "case_001",
        "status": "archived"
      },
      "meta": {},
      "errors": []
    }
