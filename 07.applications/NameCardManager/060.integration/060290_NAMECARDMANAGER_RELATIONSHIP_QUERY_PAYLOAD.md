# ============================================================
# NAMECARDMANAGER RELATIONSHIP QUERY PAYLOAD
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

request_json:
  {
    "namecard_id": "uuid",
    "include_same_company": true,
    "include_introducer_chain": true,
    "include_project_related": true,
    "include_order_related": true,
    "include_unconfirmed": false,
    "depth_limit": 2,
    "max_items": 50
  }

response_json:
  {
    "success": true,
    "data": {
      "relationships": [
        {
          "relationship_id": "uuid",
          "target_namecard_id": "uuid",
          "target_label": "string",
          "relationship_type": "same_company",
          "relationship_label": "営業部",
          "is_user_confirmed": true,
          "confidence_score": 1.0,
          "display_priority": 10
        }
      ]
    },
    "validation_code": null,
    "error_code": null,
    "message": null
  }

validation:
  - namecard_id required
  - depth_limit must be positive
  - max_items must be bounded
