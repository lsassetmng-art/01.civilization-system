# PERSONA EDGE QUESTION TO PACKET ROUTING GUIDE

status: final-registry-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071159

purpose:
Routes common design questions to the smallest useful PersonaOS edge packet.

routing_examples:

- question_type: runtime truth handoff, idempotency, duplicate, processed marking
  - open_packet: persona-state-apply

- question_type: immutable release issuance
  - open_packet: snapshot-issue

- question_type: trust verification result naming, revoked vs invalid vs unknown-key
  - open_packet: snapshot-verify

- question_type: trust support, active keys, historical key lookup, signing support
  - open_packet: trust_support
  - narrower_function_if_needed:
    - sign-event

- question_type: release application from approved input
  - open_packet: publish_apply

- question_type: released listing fields, listing filters, public-safe listing disclosure
  - open_packet: asset-publish-list
  - wider_relation_if_needed:
    - release_surface

- question_type: revoke and revocation publication relation
  - open_packet: snapshot_downstream

- question_type: work-state, candidate-state, signed delivery, manifest support, upload semantics
  - open_packet: visual_asset_support

- question_type: producer, validation, dead-notify, outward dispatch
  - open_packet: civilization_support

- question_type: internal routing, retry budget, exhaustion, handoff to runtime
  - open_packet: civilization-event-dispatcher

- question_type: lifecycle entry and history retrieval
  - open_packet: lifecycle

- question_type: cross-packet relation or uncertainty about where to start
  - open_packet: edge_bundle_atlas

routing_rule:
Start with one packet only.
Escalate to atlas only if one packet cannot explain the question fully.
