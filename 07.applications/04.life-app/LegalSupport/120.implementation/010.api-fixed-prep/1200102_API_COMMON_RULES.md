# ============================================================
# API COMMON RULES
# ============================================================

status: canonical-draft

base_path:
  - /api/life-app/legal-support/v1

common_request_envelope:
  json: |
    {
      "request_id": "req_20260414_0001",
      "actor": {
        "user_id": "user_001",
        "role": "owner",
        "locale": "ja-JP",
        "timezone": "Asia/Tokyo"
      },
      "payload": {}
    }

common_success_response_envelope:
  json: |
    {
      "result": "ok",
      "request_id": "req_20260414_0001",
      "server_time": "2026-04-14T20:00:00+09:00",
      "data": {},
      "meta": {},
      "errors": []
    }

common_error_response_envelope:
  json: |
    {
      "result": "error",
      "request_id": "req_20260414_0001",
      "server_time": "2026-04-14T20:00:00+09:00",
      "data": null,
      "meta": {},
      "errors": [
        {
          "code": "LEGAL_CASE_NOT_FOUND",
          "message": "The requested case was not found.",
          "field": "case_id"
        }
      ]
    }

common_list_meta:
  json: |
    {
      "page": 1,
      "page_size": 20,
      "total_count": 125,
      "has_next": true,
      "sort": {
        "field": "updated_at",
        "direction": "desc"
      }
    }

common_permission_object:
  json: |
    {
      "can_view": true,
      "can_edit": true,
      "can_delete": true,
      "can_share": true,
      "can_export": true,
      "can_manage_sensitive_items": true
    }

common_visibility_object:
  json: |
    {
      "share_scope": "private",
      "confidentiality_level": "normal",
      "redaction_default": "family_safe"
    }

common_enum_candidates:
  role:
    - owner
    - viewer
    - delegated_editor

  legal_case_category:
    - inheritance
    - gift
    - will
    - family
    - contract
    - money_trouble
    - housing
    - labor
    - consumer
    - elder_support
    - general_other

  legal_case_status:
    - draft
    - active
    - waiting
    - completed
    - archived

  fact_confidence:
    - confirmed
    - likely
    - uncertain
    - user_memory_only

  confidentiality_level:
    - normal
    - sensitive
    - highly_sensitive

  task_status:
    - todo
    - in_progress
    - waiting
    - done
    - cancelled

rules:
  - request_id は全 request で必須
  - actor.role は認可判定に使う
  - data が null でない success response では errors は空配列
  - list response は meta.page 系を必ず返す
  - detail response は permissions を必ず返す
  - 金額項目は currency を必ず伴う
  - 日付時刻は ISO 8601 形式
