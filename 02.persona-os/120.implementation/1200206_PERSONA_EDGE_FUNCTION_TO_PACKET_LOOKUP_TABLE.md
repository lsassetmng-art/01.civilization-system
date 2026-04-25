# PERSONA EDGE FUNCTION TO PACKET LOOKUP TABLE

status: final-registry-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_071159

purpose:
Provides one exact lookup table from each known PersonaOS edge function to its primary packet and secondary packet.

lookup_table:
- persona-state-apply
  - primary_packet: persona-state-apply
  - secondary_packet: edge_bundle_atlas

- snapshot-issue
  - primary_packet: snapshot-issue
  - secondary_packet: edge_bundle_atlas

- snapshot-verify
  - primary_packet: snapshot-verify
  - secondary_packet: trust_support or edge_bundle_atlas

- snapshot-revoke
  - primary_packet: snapshot_downstream
  - secondary_packet: edge_bundle_atlas

- revocation-list
  - primary_packet: snapshot_downstream
  - secondary_packet: edge_bundle_atlas

- sign-event
  - primary_packet: sign-event
  - secondary_packet: trust_support

- keygen-once
  - primary_packet: trust_support
  - secondary_packet: edge_bundle_atlas

- keys-current
  - primary_packet: trust_support
  - secondary_packet: edge_bundle_atlas

- keys-by-id
  - primary_packet: trust_support
  - secondary_packet: edge_bundle_atlas

- publish_apply
  - primary_packet: publish_apply
  - secondary_packet: release_surface

- asset-publish-list
  - primary_packet: asset-publish-list
  - secondary_packet: release_surface

- approval-create
  - primary_packet: release_surface
  - secondary_packet: edge_bundle_atlas

- approval-action
  - primary_packet: release_surface
  - secondary_packet: edge_bundle_atlas

- approval-sla
  - primary_packet: release_surface
  - secondary_packet: edge_bundle_atlas

- asset-publish-request-create
  - primary_packet: release_surface
  - secondary_packet: edge_bundle_atlas

- asset-publish-request-decide
  - primary_packet: release_surface
  - secondary_packet: edge_bundle_atlas

- visual-job-create
  - primary_packet: visual_asset_support
  - secondary_packet: edge_bundle_atlas

- visual-compose
  - primary_packet: visual_asset_support
  - secondary_packet: edge_bundle_atlas

- visual-upload
  - primary_packet: visual_asset_support
  - secondary_packet: edge_bundle_atlas

- persona-auto-generate-part
  - primary_packet: visual_asset_support
  - secondary_packet: edge_bundle_atlas

- persona_build_manifest
  - primary_packet: visual_asset_support
  - secondary_packet: edge_bundle_atlas

- persona_background_get_signed_urls
  - primary_packet: visual_asset_support
  - secondary_packet: edge_bundle_atlas

- civilization-event-dispatcher
  - primary_packet: civilization-event-dispatcher
  - secondary_packet: edge_bundle_atlas

- civilization-event-producer
  - primary_packet: civilization_support
  - secondary_packet: edge_bundle_atlas

- event-validate
  - primary_packet: civilization_support
  - secondary_packet: edge_bundle_atlas

- civilization-dead-notify
  - primary_packet: civilization_support
  - secondary_packet: edge_bundle_atlas

- external_dispatcher
  - primary_packet: civilization_support
  - secondary_packet: edge_bundle_atlas

- persona-create
  - primary_packet: lifecycle
  - secondary_packet: edge_bundle_atlas

- persona-event-history
  - primary_packet: lifecycle
  - secondary_packet: edge_bundle_atlas

lookup_rule:
Always open the primary packet first.
Use the secondary packet only when the question crosses packet boundaries.
