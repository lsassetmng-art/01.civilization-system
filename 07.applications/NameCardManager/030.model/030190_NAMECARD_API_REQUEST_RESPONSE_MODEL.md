# ============================================================
# NAMECARD API REQUEST RESPONSE MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_api_request_response
owner: Boss
prepared_by: Zero

purpose:
Defines request/response model families used across the
NameCardManager API boundary.

request_families:
- create_namecard_request
- update_namecard_request
- delete_namecard_request
- sync_pull_request
- sync_push_request
- app_share_request
- app_share_revoke_request
- erp_publish_request
- relationship_query_request

response_families:
- create_namecard_response
- update_namecard_response
- delete_namecard_response
- sync_pull_response
- sync_push_response
- app_share_response
- app_share_revoke_response
- erp_publish_response
- relationship_query_response

common_response_fields:
- success
- status_code
- error_code
- error_message
- canonical_version
- sync_state
- updated_at
