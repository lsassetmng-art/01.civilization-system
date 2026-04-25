# 0301300002_PERSONA_LICENSE_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: license
canonical: candidate
path: 030.model/0301300002_PERSONA_LICENSE_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for usage license control.

primary_entities:
- persona_license
- persona_license_event

required_identifiers:
- license_id
- persona_id
- licensee_id
- license_event_id

required_fields:
- license_status
- granted_scope
- effective_from
- effective_to
- granted_by
- revoked_by

constraints:
- license lifecycle is independent from access grant and transfer
- revoke and expire paths must be distinguishable
- scope must remain explicit and auditable

query_paths:
- by license_id
- by persona_id
- by license_status
- by licensee_id

review_targets:
- add exact scope fields
- add exact lifecycle enums
