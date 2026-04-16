# ============================================================
# NAMECARD API FIELD SCHEMA MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Defines canonical field schema families for NameCardManager API
requests and responses.

schema_families:
- create_namecard_request_schema
- create_namecard_response_schema
- update_namecard_request_schema
- update_namecard_response_schema
- delete_namecard_request_schema
- delete_namecard_response_schema
- sync_push_request_schema
- sync_push_response_schema
- sync_pull_request_schema
- sync_pull_response_schema
- app_share_request_schema
- app_share_response_schema
- app_share_revoke_request_schema
- app_share_revoke_response_schema
- erp_publish_request_schema
- erp_publish_response_schema
- relationship_query_request_schema
- relationship_query_response_schema

common_field_types:
- string
- uuid
- boolean
- integer
- timestamp
- enum
- object
- array
- nullable_string

notes:
- schema here is design schema, not language-specific implementation code
- request/response field meaning must remain canonical across clients
