# PERSONA EDGE PACKET REGISTRY

status: final-registry-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071159

purpose:
Provides the canonical registry of the major PersonaOS edge design packets.

current_global_mode:
- design_only
- atlas_first_navigation
- targeted_followup_only
- implementation_started: no

packet_types:
- single_function_packet
- bundle_packet
- atlas_packet

single_function_packets:
- persona-state-apply
  - packet_kind: single_function_packet
  - scope: runtime_engine_orchestrator
- snapshot-issue
  - packet_kind: single_function_packet
  - scope: immutable_release_issue
- snapshot-verify
  - packet_kind: single_function_packet
  - scope: trust_verification
- publish_apply
  - packet_kind: single_function_packet
  - scope: release_application
- civilization-event-dispatcher
  - packet_kind: single_function_packet
  - scope: internal_routing_and_runtime_handoff
- sign-event
  - packet_kind: single_function_packet
  - scope: signature_generation_support
- asset-publish-list
  - packet_kind: single_function_packet
  - scope: released_listing_surface

bundle_packets:
- trust_support
  - packet_kind: bundle_packet
  - functions:
    - sign-event
    - keygen-once
    - keys-current
    - keys-by-id
- release_surface
  - packet_kind: bundle_packet
  - functions:
    - publish_apply
    - asset-publish-list
- snapshot_downstream
  - packet_kind: bundle_packet
  - functions:
    - snapshot-revoke
    - revocation-list
- visual_asset_support
  - packet_kind: bundle_packet
  - functions:
    - visual-job-create
    - visual-compose
    - visual-upload
    - persona-auto-generate-part
    - persona_build_manifest
    - persona_background_get_signed_urls
- civilization_support
  - packet_kind: bundle_packet
  - functions:
    - civilization-event-producer
    - event-validate
    - civilization-dead-notify
    - external_dispatcher
- lifecycle
  - packet_kind: bundle_packet
  - functions:
    - persona-create
    - persona-event-history

atlas_packet:
- edge_bundle_atlas
  - packet_kind: atlas_packet
  - scope: all_major_packets_and_bundle_relations

registry_rule:
If a function belongs to both a single-function packet and a bundle packet,
prefer the single-function packet when the question is function-local.
Prefer the bundle packet when the relation between sibling functions matters.
