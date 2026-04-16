# ============================================================
# NAMECARDMANAGER API EXACT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes initial exact request/response payloads for Phase A implementation.

# ============================================================
# 1. COMMON RESPONSE
# ============================================================

common_success_response:
{
  "success": true,
  "data": {},
  "validation_code": null,
  "error_code": null,
  "message": null
}

common_failure_response:
{
  "success": false,
  "data": null,
  "validation_code": "VALIDATION_CODE_OPTIONAL",
  "error_code": "ERROR_CODE_OPTIONAL",
  "message": "human readable optional message"
}

rules:
- validation_code is used for prerequisite / field / policy failure
- error_code is used for execution / system / path failure
- success=false must not include partial success semantics unless explicitly documented
- canonical identifiers are returned in data only

# ============================================================
# 2. LIST NAMECARDS
# ============================================================

endpoint:
- POST /namecards/list

request_payload:
{
  "query": "optional string",
  "filters": {
    "company_group_key": "optional string",
    "sync_state": "optional enum",
    "app_share_state": "optional enum",
    "erp_publication_state": "optional enum",
    "deleted_excluded": true
  },
  "sort": {
    "key": "recent_update",
    "direction": "desc"
  },
  "paging": {
    "page": 1,
    "page_size": 50
  }
}

response_payload:
{
  "success": true,
  "data": {
    "items": [
      {
        "namecard_id": "uuid",
        "full_name": "string",
        "company_name": "string or null",
        "department_name": "string or null",
        "title_name": "string or null",
        "sync_state": "enum",
        "app_share_state": "enum",
        "erp_publication_state": "enum",
        "last_updated_at": "timestamp",
        "last_contact_at": "timestamp or null"
      }
    ],
    "paging": {
      "page": 1,
      "page_size": 50,
      "total_count": 0
    }
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 3. GET NAMECARD DETAIL
# ============================================================

endpoint:
- POST /namecards/detail

request_payload:
{
  "namecard_id": "uuid"
}

response_payload:
{
  "success": true,
  "data": {
    "record": {
      "namecard_id": "uuid",
      "full_name": "string",
      "company_name": "string or null",
      "department_name": "string or null",
      "title_name": "string or null",
      "email": "string or null",
      "phone": "string or null",
      "address_text": "string or null",
      "website_url": "string or null",
      "memo": "string or null",
      "sync_state": "enum",
      "app_share_state": "enum",
      "erp_publication_state": "enum",
      "canonical_version": 1,
      "created_at": "timestamp",
      "updated_at": "timestamp"
    },
    "detail_profile": {
      "tendency_note": "string or null",
      "personality_note": "string or null",
      "communication_note": "string or null",
      "authority_scope_note": "string or null",
      "decision_scope_note": "string or null",
      "responsibility_scope_note": "string or null",
      "work_scope_note": "string or null",
      "work_content_note": "string or null",
      "influence_scope_note": "string or null",
      "relationship_note": "string or null"
    }
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 4. UPSERT NAMECARD
# ============================================================

endpoint:
- POST /namecards/upsert

request_payload:
{
  "namecard_id": "uuid or null",
  "canonical_version": 1,
  "record": {
    "full_name": "string",
    "company_name": "string or null",
    "department_name": "string or null",
    "title_name": "string or null",
    "email": "string or null",
    "phone": "string or null",
    "address_text": "string or null",
    "website_url": "string or null",
    "memo": "string or null"
  },
  "detail_profile": {
    "tendency_note": "string or null",
    "personality_note": "string or null",
    "communication_note": "string or null",
    "authority_scope_note": "string or null",
    "decision_scope_note": "string or null",
    "responsibility_scope_note": "string or null",
    "work_scope_note": "string or null",
    "work_content_note": "string or null",
    "influence_scope_note": "string or null",
    "relationship_note": "string or null"
  }
}

response_payload:
{
  "success": true,
  "data": {
    "namecard_id": "uuid",
    "canonical_version": 2,
    "updated_at": "timestamp"
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 5. LOGICAL DELETE NAMECARD
# ============================================================

endpoint:
- POST /namecards/delete

request_payload:
{
  "namecard_id": "uuid",
  "canonical_version": 2
}

response_payload:
{
  "success": true,
  "data": {
    "namecard_id": "uuid",
    "deleted_at": "timestamp",
    "canonical_version": 3
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 6. APP SHARE
# ============================================================

endpoint:
- POST /namecards/share/apply

request_payload:
{
  "namecard_ids": ["uuid"],
  "share_target_ids": ["uuid"]
}

response_payload:
{
  "success": true,
  "data": {
    "applied_count": 1,
    "share_state": "shared_active"
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

endpoint:
- POST /namecards/share/revoke

request_payload:
{
  "namecard_ids": ["uuid"],
  "share_target_ids": ["uuid"]
}

response_payload:
{
  "success": true,
  "data": {
    "revoked_count": 1,
    "share_state": "share_revoked"
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 7. PUBLICATION PREFLIGHT
# ============================================================

endpoint:
- POST /namecards/publication/preflight

request_payload:
{
  "requester_user_id": "uuid",
  "namecard_ids": ["uuid"],
  "company_id": "uuid",
  "publication_policy_code": "string"
}

response_payload:
{
  "success": true,
  "data": {
    "preflight_passed": true,
    "blocking_validation_codes": [],
    "warning_items": [],
    "approval_required": true,
    "publication_preview_payload": {}
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 8. PUBLICATION REQUEST
# ============================================================

endpoint:
- POST /namecards/publication/request

request_payload:
{
  "requester_user_id": "uuid",
  "company_id": "uuid",
  "publication_policy_code": "string",
  "namecard_ids": ["uuid"],
  "request_note": "optional string"
}

response_payload:
{
  "success": true,
  "data": {
    "publication_request_id": "uuid",
    "request_status": "pending_approval",
    "approval_required": true
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 9. SYNC PUSH
# ============================================================

endpoint:
- POST /namecards/sync/push

request_payload:
{
  "device_id": "string",
  "operations": [
    {
      "operation_id": "uuid",
      "idempotency_key": "string",
      "operation_type": "upsert_record",
      "namecard_id": "uuid or null",
      "base_canonical_version": 1,
      "payload": {}
    }
  ]
}

response_payload:
{
  "success": true,
  "data": {
    "results": [
      {
        "operation_id": "uuid",
        "result_state": "applied",
        "namecard_id": "uuid",
        "canonical_version": 2,
        "validation_code": null,
        "error_code": null
      }
    ]
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

# ============================================================
# 10. SYNC PULL
# ============================================================

endpoint:
- POST /namecards/sync/pull

request_payload:
{
  "device_id": "string",
  "since_timestamp": "timestamp"
}

response_payload:
{
  "success": true,
  "data": {
    "records": [],
    "server_time": "timestamp"
  },
  "validation_code": null,
  "error_code": null,
  "message": null
}

