# ============================================================
# TASK AND SHARE API EXACT PAYLOAD
# ============================================================

status: canonical-draft

endpoints:
  task:
    - GET /api/life-app/legal-support/v1/cases/{case_id}/tasks
    - POST /api/life-app/legal-support/v1/cases/{case_id}/tasks
    - PATCH /api/life-app/legal-support/v1/cases/{case_id}/tasks/{task_id}
  share:
    - POST /api/life-app/legal-support/v1/cases/{case_id}/share/grant
    - POST /api/life-app/legal-support/v1/cases/{case_id}/share/revoke
    - POST /api/life-app/legal-support/v1/cases/{case_id}/share/export-pack

task_list_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_task_list_001",
      "server_time": "2026-04-14T20:40:00+09:00",
      "data": {
        "tasks": [
          {
            "task_id": "task_001",
            "task_type": "document_collection",
            "title": "戸籍謄本を取得する",
            "description": "市役所で最新の戸籍謄本を取得",
            "assigned_to_role": "owner",
            "due_date": "2026-04-20",
            "status": "todo",
            "related_document_id_optional": null
          }
        ]
      },
      "meta": {
        "page": 1,
        "page_size": 50,
        "total_count": 1,
        "has_next": false,
        "sort": {
          "field": "due_date",
          "direction": "asc"
        }
      },
      "errors": []
    }

task_create_request:
  json: |
    {
      "request_id": "req_task_create_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "task_type": "document_collection",
        "title": "戸籍謄本を取得する",
        "description": "市役所で最新の戸籍謄本を取得",
        "assigned_to_role": "owner",
        "due_date": "2026-04-20",
        "status": "todo",
        "related_document_id_optional": null
      }
    }

task_update_request:
  json: |
    {
      "request_id": "req_task_update_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "status": "in_progress",
        "description": "窓口確認済み。取得予定日は 2026-04-18。"
      }
    }

share_grant_request:
  json: |
    {
      "request_id": "req_share_grant_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "target_user_id": "user_002",
        "granted_role": "viewer",
        "included_sections": [
          "case_overview",
          "stakeholders",
          "timeline",
          "documents",
          "tasks"
        ],
        "exclude_sensitive_items": true,
        "redaction_level": "family_safe"
      }
    }

share_grant_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_share_grant_001",
      "server_time": "2026-04-14T20:41:00+09:00",
      "data": {
        "granted": true,
        "case_id": "case_001",
        "target_user_id": "user_002",
        "granted_role": "viewer"
      },
      "meta": {},
      "errors": []
    }

share_revoke_request:
  json: |
    {
      "request_id": "req_share_revoke_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "target_user_id": "user_002"
      }
    }

share_export_pack_request:
  json: |
    {
      "request_id": "req_export_pack_001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {
        "pack_type": "consultation_summary",
        "included_sections": [
          "case_overview",
          "timeline",
          "stakeholders",
          "documents",
          "consultations",
          "tasks"
        ],
        "redaction_level": "family_safe",
        "format": "pdf"
      }
    }

share_export_pack_response:
  json: |
    {
      "result": "ok",
      "request_id": "req_export_pack_001",
      "server_time": "2026-04-14T20:42:00+09:00",
      "data": {
        "share_pack_id": "pack_001",
        "case_id": "case_001",
        "pack_type": "consultation_summary",
        "format": "pdf",
        "artifact_status": "generated"
      },
      "meta": {},
      "errors": []
    }
