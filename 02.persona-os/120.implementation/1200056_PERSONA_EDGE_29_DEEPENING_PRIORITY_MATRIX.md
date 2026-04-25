# PERSONA EDGE 29 DEEPENING PRIORITY MATRIX

status: design-deepening-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_172646

priority_tier_a_blocking_core:
- persona-state-apply
  - why: runtime-engine center, truth-boundary adjacency, idempotency and snapshot trigger coupling
- snapshot-issue
  - why: immutable release boundary and downstream trust anchor
- snapshot-verify
  - why: verification semantics affect trust chain and external surface
- snapshot-revoke
  - why: invalidation semantics affect trust chain correctness
- revocation-list
  - why: trust publication correctness
- sign-event
  - why: runtime event trust support
- keygen-once
  - why: key lifecycle root
- keys-by-id
  - why: historical verification continuity
- keys-current
  - why: active verification surface

priority_tier_b_release_and_governance:
- approval-action
- asset-publish-request-create
- asset-publish-request-decide
- publish_apply
- asset-publish-list
- approval-create
- approval-sla

priority_tier_c_visual_asset_flow:
- visual-job-create
- visual-compose
- visual-upload
- persona-auto-generate-part
- persona_build_manifest
- persona_background_get_signed_urls

priority_tier_d_integration_flow:
- civilization-event-producer
- event-validate
- civilization-event-dispatcher
- civilization-dead-notify
- external_dispatcher

priority_tier_e_lifecycle_and_retrieval:
- persona-create
- persona-event-history

priority_meaning:
- tier_a = blocks multiple downstream families if ambiguous
- tier_b = release and listing correctness
- tier_c = work-state to release lineage correctness
- tier_d = routing and contract correctness
- tier_e = lifecycle surface cleanup after core stabilization

