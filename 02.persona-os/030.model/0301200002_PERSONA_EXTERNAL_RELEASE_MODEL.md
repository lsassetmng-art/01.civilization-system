# 0301200002_PERSONA_EXTERNAL_RELEASE_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: external_rights
canonical: candidate
path: 030.model/0301200002_PERSONA_EXTERNAL_RELEASE_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for external release and rights control.

primary_entities:
- persona_external_release_request
- persona_external_release_result
- persona_export_allow_decision

required_identifiers:
- release_request_id
- persona_id
- target_system_id
- export_decision_id

required_fields:
- release_scope
- release_status
- result_code
- requested_at
- completed_at
- decided_by

constraints:
- external release must bind to explicit release scope
- target system identity is required
- export allow decision is separate from transport result
- failed release must remain retry-auditable

query_paths:
- by release_request_id
- by persona_id
- by target_system_id
- by release_status

review_targets:
- add exact scope fields
- add exact transport result normalization fields
