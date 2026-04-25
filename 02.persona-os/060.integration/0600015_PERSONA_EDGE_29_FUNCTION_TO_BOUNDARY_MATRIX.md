# PERSONA EDGE 29 FUNCTION TO BOUNDARY MATRIX

status: confirmed
system: PersonaOS
layer: integration
confirmed_at: 20260418_121148

purpose:
Maps the confirmed 29 Edge Functions to PersonaOS boundaries and ownership semantics.

mapping_matrix:
- persona-create
  - family: lifecycle
  - boundary_role: persona lifecycle entry
  - truth_relation: may create canonical persona root through PersonaOS-owned path
  - external_surface: restricted
- persona-event-history
  - family: lifecycle
  - boundary_role: history retrieval surface
  - truth_relation: read-oriented, not truth mutation owner
  - external_surface: restricted read surface only

- persona-state-apply
  - family: runtime_engine
  - boundary_role: runtime engine orchestrator
  - truth_relation: orchestrates intake, gate, dedupe, registry lookup, apply handoff, processed marking, snapshot trigger, audit support
  - canonical_truth_owner: no
  - canonical_truth_mutation_boundary: state_apply or apply_event_engine behind the edge
- sign-event
  - family: runtime_engine
  - boundary_role: event signature support
  - truth_relation: trust support, not truth mutation owner

- visual-job-create
  - family: runtime_visual
  - boundary_role: visual work-state intake
  - truth_relation: work-state only
- visual-compose
  - family: runtime_visual
  - boundary_role: visual manifest or composition orchestrator
  - truth_relation: work-state only until release-binding
- visual-upload
  - family: runtime_visual
  - boundary_role: PNG commit or visual output persistence path
  - truth_relation: release artifact only when lineage-bound

- persona-auto-generate-part
  - family: asset
  - boundary_role: AI part generation work path
  - truth_relation: generated work-state or authored asset candidate
- persona_build_manifest
  - family: asset
  - boundary_role: character build manifest support
  - truth_relation: builder support, not truth mutation owner
- persona_background_get_signed_urls
  - family: asset
  - boundary_role: signed asset access helper
  - truth_relation: trust-limited asset delivery support

- approval-create
  - family: approval_publish
  - boundary_role: approval entry
  - truth_relation: governance support, not truth mutation owner
- approval-action
  - family: approval_publish
  - boundary_role: approval decision
  - truth_relation: governance support
- approval-sla
  - family: approval_publish
  - boundary_role: approval timing monitor
  - truth_relation: operations support
- asset-publish-request-create
  - family: approval_publish
  - boundary_role: publish request intake
  - truth_relation: release preparation
- asset-publish-request-decide
  - family: approval_publish
  - boundary_role: publish decision
  - truth_relation: release governance
- asset-publish-list
  - family: approval_publish
  - boundary_role: published asset listing
  - truth_relation: released surface index
- publish_apply
  - family: approval_publish
  - boundary_role: release application path
  - truth_relation: snapshot or release-side application, not mutable truth owner by default

- snapshot-issue
  - family: security_snapshot
  - boundary_role: immutable release artifact issue
  - truth_relation: snapshot issue boundary
- snapshot-revoke
  - family: security_snapshot
  - boundary_role: release artifact invalidation
  - truth_relation: revocation boundary
- snapshot-verify
  - family: security_snapshot
  - boundary_role: snapshot trust verification
  - truth_relation: trust verification boundary
- revocation-list
  - family: security_snapshot
  - boundary_role: revocation publication surface
  - truth_relation: trust publication surface

- keygen-once
  - family: security_keys
  - boundary_role: key material generation
  - truth_relation: trust support boundary
- keys-by-id
  - family: security_keys
  - boundary_role: key retrieval by id
  - truth_relation: trust support boundary
- keys-current
  - family: security_keys
  - boundary_role: active key retrieval
  - truth_relation: trust support boundary

- civilization-event-dispatcher
  - family: integration_civilization
  - boundary_role: civilization-side event distribution
  - truth_relation: integration dispatch, not truth owner
- civilization-event-producer
  - family: integration_civilization
  - boundary_role: civilization event production
  - truth_relation: integration production path
- civilization-dead-notify
  - family: integration_civilization
  - boundary_role: failed-event dead notification
  - truth_relation: integration failure support
- event-validate
  - family: integration_civilization
  - boundary_role: contract validation edge
  - truth_relation: contract gate, not truth owner
- external_dispatcher
  - family: integration_civilization
  - boundary_role: external dispatch
  - truth_relation: external integration dispatch, not truth owner

global_rules:
- only PersonaOS canonical apply boundary may mutate canonical mutable truth
- snapshot issue remains the immutable external consumption artifact boundary
- signature, key, and revocation functions remain trust-support boundaries
- work-state and release artifact must remain separated
- external surface must remain signed snapshot and event contract oriented

