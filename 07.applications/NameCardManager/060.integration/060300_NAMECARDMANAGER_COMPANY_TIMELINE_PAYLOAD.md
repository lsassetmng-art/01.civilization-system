# ============================================================
# NAMECARDMANAGER COMPANY TIMELINE PAYLOAD
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

request_json:
  {
    "company_group_key": "string",
    "from_at": "timestamp or null",
    "to_at": "timestamp or null",
    "event_types": [
      "namecard_created",
      "meeting_logged",
      "relationship_confirmed"
    ],
    "include_inferred": true,
    "page": 1,
    "page_size": 50
  }

response_json:
  {
    "success": true,
    "data": {
      "items": [
        {
          "timeline_event_id": "uuid",
          "event_at": "timestamp",
          "event_type": "meeting_logged",
          "source_type": "activity",
          "source_id": "uuid",
          "primary_namecard_id": "uuid",
          "summary_label": "展示会後の初回打ち合わせ",
          "detail_excerpt": "A製品の要件確認を実施",
          "is_inferred": false,
          "confidence_score": 1.0
        }
      ],
      "paging": {
        "page": 1,
        "page_size": 50,
        "total_count": 1
      }
    },
    "validation_code": null,
    "error_code": null,
    "message": null
  }

validation:
  - company_group_key required
  - page and page_size required
  - from_at must not be later than to_at
