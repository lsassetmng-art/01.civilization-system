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

# EXACT CODE FAMILY FIXATION

exact_code_family_domain: builder_storage_mapping
fixed_at: 20260417_164945

fixed_draft_status_family:
- draft_open
- draft_validating
- draft_blocked
- draft_publishable
- draft_published
- draft_retired

fixed_validation_status_family:
- validation_pending
- validation_success
- validation_failed

fixed_approval_status_family:
- approval_not_requested
- approval_pending
- approval_approved
- approval_rejected

storage_mapping_rule:
- draft_status, validation_status, and approval_status must remain separate columns or fields
- publishability must be derivable without ambiguous merged status values

# EXACT STATE ENUM AND TRANSITION FIXATION

exact_state_transition_domain: builder_storage_mapping
fixed_at: 20260417_165940

storage_state_columns:
- draft_status
- validation_status
- approval_status
- draft_version

column_rules:
- draft_status, validation_status, and approval_status must remain distinct
- draft_version increments on accepted mutation only
- publish request must point to a single draft_version
- validation_result must bind to draft_id plus draft_version
- published output must not reuse mutable draft identity

derived_state_rules:
- publishable requires draft_status = draft_publishable
- validation pass requires validation_status = validation_success
- approval-ready state must remain separable from publishable state

# EXACT REQUEST RESPONSE EXAMPLES

exact_example_domain: builder_storage_mapping
fixed_at: 20260417_174222

draft_row_example:
  draft_id: draft_001
  persona_id: persona_001
  draft_version: 3
  draft_status: draft_publishable
  validation_status: validation_success
  approval_status: approval_approved
  updated_by: actor_001

validation_row_example:
  validation_result_id: vr_001
  draft_id: draft_001
  draft_version: 3
  validation_status: validation_success

# EXACT PERSISTENCE AND AUDIT FIXATION

exact_persistence_audit_domain: builder_storage_mapping
fixed_at: 20260417_174751

storage_objects:
- persona_builder_draft
- persona_builder_section
- persona_builder_validation_result
- persona_builder_publish_request
- persona_builder_publish_result
- persona_audit_trace

mandatory_record_linkage:
- draft_id links all mutable builder records
- draft_version links validation and publishability
- publish_request_id links publish request and publish result
- actor_id or provenance is mandatory on mutable writes

audit_rules:
- mutable draft writes require actor and timestamp
- validation_result must remain traceable to draft_version
- publish_result must remain traceable to immutable release lineage

# EXACT ACCEPTANCE AND DONE GATE FIXATION

exact_acceptance_domain: builder_storage_mapping
fixed_at: 20260417_175108

acceptance_checklist:
- draft record stores fixed status columns
- validation result remains traceable to draft_id and draft_version
- publish request remains traceable to one draft_version
- mutable draft writes always include actor and timestamp
- published output is lineage-linked and not mutable-draft-reused

done_definition:
- required storage objects are fixed
- required columns are fixed
- storage linkage rules are fixed
- state columns are explicitly separated
- example rows are present

implementation_gate:
- no implementation may collapse draft_status, validation_status, and approval_status into one ambiguous field
- no implementation may publish without lineage-preserving mapping
