# 0301300003_PERSONA_ACCESS_GRANT_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: access_grant
canonical: candidate
path: 030.model/0301300003_PERSONA_ACCESS_GRANT_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for access grant control.

primary_entities:
- persona_access_grant
- persona_access_grant_event

required_identifiers:
- access_grant_id
- persona_id
- grantee_id
- access_grant_event_id

required_fields:
- access_status
- granted_scope
- effective_from
- effective_to
- granted_by
- revoked_by

constraints:
- access grant is not ownership transfer
- access scope and duration must remain explicit
- revoke and expire paths must remain auditable

query_paths:
- by access_grant_id
- by persona_id
- by grantee_id
- by access_status

review_targets:
- add exact scope fields
- add exact policy linkage fields
