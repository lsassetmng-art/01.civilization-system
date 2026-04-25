# 1200700002_PERSONA_BUILDER_API_SPEC

status: exact-ready-draft
system: PersonaOS
layer: implementation
domain: builder
canonical: candidate
path: 120.implementation/1200700002_PERSONA_BUILDER_API_SPEC.md
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

exact_payload_domain: builder_api
fixed_at: 20260417_164735

create_draft_request:
  required_fields:
    - persona_id
    - actor_id
    - draft_name

edit_draft_request:
  required_fields:
    - draft_id
    - expected_draft_version
    - mutation_payload
    - actor_id

validate_draft_request:
  required_fields:
    - draft_id
    - actor_id

publish_draft_request:
  required_fields:
    - draft_id
    - actor_id
    - expected_validation_status
    - expected_approval_status

success_response_family:
  - created
  - updated
  - validated
  - publishable
  - published

reject_or_block_family:
  - builder_conflict
  - builder_validation_failed
  - builder_approval_required
  - builder_publish_blocked
  - builder_not_found

# EXACT CODE FAMILY FIXATION

exact_code_family_domain: builder_api
fixed_at: 20260417_164945

fixed_builder_status_family:
- created
- updated
- validated
- approval_pending
- publishable
- published
- blocked

fixed_result_code_family:
- BUILDER_CREATE_SUCCESS
- BUILDER_UPDATE_SUCCESS
- BUILDER_VALIDATE_SUCCESS
- BUILDER_APPROVAL_PENDING
- BUILDER_PUBLISHABLE
- BUILDER_PUBLISH_SUCCESS

fixed_reject_or_block_code_family:
- BUILDER_NOT_FOUND
- BUILDER_CONFLICT
- BUILDER_VALIDATION_FAILED
- BUILDER_APPROVAL_REQUIRED
- BUILDER_PUBLISH_BLOCKED

rules:
- each builder endpoint must emit one result family only
- conflict and validation failure must not share the same code
- publish blocked must remain distinct from approval pending

# EXACT STATE ENUM AND TRANSITION FIXATION

exact_state_transition_domain: builder_api
fixed_at: 20260417_165940

draft_status_enum:
- draft_open
- draft_validating
- draft_blocked
- draft_publishable
- draft_published
- draft_retired

validation_status_enum:
- validation_pending
- validation_success
- validation_failed

approval_status_enum:
- approval_not_requested
- approval_pending
- approval_approved
- approval_rejected

builder_transition_table:
- create_draft : none -> draft_open
- validate_draft : draft_open -> draft_validating
- validation_fail : draft_validating -> draft_blocked
- validation_pass : draft_validating -> draft_publishable
- request_approval : draft_publishable -> approval_pending
- approve : approval_pending -> approval_approved
- reject_approval : approval_pending -> approval_rejected
- publish : draft_publishable + approval_approved -> draft_published

rules:
- publish requires validation_success
- publish requires approval_approved when approval is required
- draft_published is terminal for mutable authoring
- draft_retired is terminal

# EXACT REQUEST RESPONSE EXAMPLES

exact_example_domain: builder_api
fixed_at: 20260417_174222

create_draft_request_example:
  persona_id: persona_001
  actor_id: actor_001
  draft_name: first_publish_candidate

create_draft_response_example:
  draft_id: draft_001
  persona_id: persona_001
  draft_status: draft_open
  result_code: BUILDER_CREATE_SUCCESS

publish_draft_request_example:
  draft_id: draft_001
  actor_id: actor_001
  expected_validation_status: validation_success
  expected_approval_status: approval_approved

publish_draft_response_example:
  draft_id: draft_001
  draft_status: draft_published
  result_code: BUILDER_PUBLISH_SUCCESS
