# ============================================================
# AIWORKER CANONICAL PAYLOAD SCHEMA CATALOG EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the canonical payload schema catalog and naming policy.

schema_catalog:
- PAYLOAD_COMMAND_ROW_V1
- PAYLOAD_DRAFT_ROW_V1
- PAYLOAD_STAGING_ROW_V1
- PAYLOAD_OFFICIAL_INTAKE_V1
- PAYLOAD_RESULT_EVENT_V1
- PAYLOAD_BUSINESS_REQUEST_EVENT_V1

catalog_policy:
- schema names are stable identifiers
- version is explicit in schema name
- storage may keep payload as jsonb, but contract identity is schema-catalog driven
- validation implementation may be app-side, db-side, or mixed, but contract identity remains stable

json_storage_direction:
- command_row.payload_ref points to payload conforming to PAYLOAD_COMMAND_ROW_V1
- draft_row.draft_payload_ref points to payload conforming to PAYLOAD_DRAFT_ROW_V1
- staging_row.normalized_payload_ref points to payload conforming to PAYLOAD_STAGING_ROW_V1
- official intake execution material conforms to PAYLOAD_OFFICIAL_INTAKE_V1
- event_outbox.payload_ref points to payload conforming to PAYLOAD_RESULT_EVENT_V1

validation_direction:
- minimum validation on receipt
- strict validation before official intake creation
- strict validation before event emission
- validation failure must map to fixed error/result codes

hard_rules:
- payload refs without catalog identity are invalid
- catalog identity must not be inferred from filename conventions alone
