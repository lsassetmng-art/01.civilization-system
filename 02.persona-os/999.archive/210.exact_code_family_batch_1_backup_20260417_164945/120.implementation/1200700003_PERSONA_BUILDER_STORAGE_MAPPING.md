# 1200700003_PERSONA_BUILDER_STORAGE_MAPPING

status: exact-ready-draft
system: PersonaOS
layer: implementation
domain: builder
canonical: candidate
path: 120.implementation/1200700003_PERSONA_BUILDER_STORAGE_MAPPING.md
exact_ready_at: 20260417_134829

purpose:
Defines the exact-ready implementation contract for builder authoring.

authoritative_operations:
- create draft
- read draft
- update section with version check
- validate draft
- request approval
- publish approved draft

request_side:
- draft_id
- persona_id
- expected_draft_version
- mutation_payload
- actor_id

response_side:
- success result
- conflict result
- validation blocked result
- approval required result
- publish blocked result

persistence_touchpoints:
- draft record
- draft section record
- validation result
- approval decision
- publish request
- release linkage

error_families:
- draft_not_found
- builder_conflict
- builder_validation_failed
- builder_approval_required
- builder_publish_blocked

acceptance_targets:
- draft create
- edit conflict
- validation fail
- publish pass
- publish blocked

review_targets:
- add exact payload keys
- add exact status codes
- add exact storage object names

# EXACT PAYLOAD FIXATION

exact_payload_domain: builder_storage_mapping
fixed_at: 20260417_164735

minimum_records:
- persona_builder_draft
- persona_builder_section
- persona_builder_validation_result
- persona_builder_publish_request

persona_builder_draft_required_columns:
- draft_id
- persona_id
- draft_version
- draft_status
- approval_status
- validation_status
- created_at
- updated_at
- updated_by

mapping_rules:
- draft_version increments on accepted mutation
- publish request must reference a single draft_version
- validation result must be traceable to draft_id and draft_version
- published output must not reuse mutable draft identity
