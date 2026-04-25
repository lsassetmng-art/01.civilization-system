# 0300600002_PERSONA_BUILDER_DRAFT_MODEL

status: exact-ready-draft
system: PersonaOS
layer: model
domain: builder
canonical: candidate
path: 030.model/0300600002_PERSONA_BUILDER_DRAFT_MODEL.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready model boundary for Persona Builder authoring.

primary_entities:
- persona_builder_draft
- persona_builder_section
- persona_builder_changeset
- persona_builder_validation_result
- persona_builder_publish_request

required_identifiers:
- draft_id
- persona_id
- section_id
- changeset_id
- validation_result_id
- publish_request_id

required_fields:
- draft_version
- draft_status
- approval_status
- validation_status
- created_at
- updated_at
- updated_by

lifecycle_states:
- draft_open
- draft_validating
- draft_blocked
- draft_publishable
- draft_published
- draft_retired

constraints:
- draft_version increments on accepted mutation
- publishable requires latest validation success
- section write requires conflict-safe version match
- published output must not reuse mutable draft identity

query_paths:
- by draft_id
- by persona_id
- by draft_status
- by publish_request_id
- by validation_result_id

review_targets:
- add exact field types
- add exact enum values
- add exact uniqueness constraints
