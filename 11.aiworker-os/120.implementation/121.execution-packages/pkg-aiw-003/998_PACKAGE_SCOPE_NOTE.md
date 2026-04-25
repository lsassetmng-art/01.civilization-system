# ============================================================
# PKG-AIW-003 PACKAGE SCOPE NOTE
# ============================================================

status: scope-note
package_code: PKG-AIW-003
system: AiworkerOS
owner: Boss
prepared_by: Zero

note:
This package realizes the payload contract side of WB04 at the execution level.

storage_direction:
- payloads are stored in aiworker.payload_document
- existing payload_ref columns point to aiworker.payload_document.payload_ref by contract
- this package does not retrofit foreign keys onto existing payload_ref columns

validation_direction:
- payload validation is fail-closed
- schema identity is explicit through payload_schema_catalog
- unknown or malformed critical shape is rejected

rule:
- use this package after PKG-AIW-001
- use with PERSONA_DATABASE_URL
