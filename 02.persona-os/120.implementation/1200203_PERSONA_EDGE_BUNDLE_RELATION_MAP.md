# PERSONA EDGE BUNDLE RELATION MAP

status: final-atlas-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_065738

purpose:
Shows the relation between major packets and bundles.

runtime_and_truth_backbone:
- civilization-event-producer
- event-validate
- civilization-event-dispatcher
- persona-state-apply
- state_apply or equivalent truth boundary

trust_and_snapshot_backbone:
- sign-event
- snapshot-issue
- snapshot-verify
- snapshot-revoke
- revocation-list
- keys-current
- keys-by-id

release_backbone:
- approval and publish decision surfaces upstream
- publish_apply
- asset-publish-list

visual_asset_backbone:
- visual-job-create
- visual-compose
- visual-upload
- persona-auto-generate-part
- persona_build_manifest
- persona_background_get_signed_urls
- publish path downstream when release promotion is needed

lifecycle_backbone:
- persona-create
- persona-event-history

relation_rules:
- runtime orchestration remains distinct from truth mutation
- trust generation remains distinct from trust verification
- release application remains distinct from released listing
- candidate lineage remains distinct from released lineage
- lifecycle entry remains distinct from lifecycle retrieval

operator_map:
- truth-closest packet = persona-state-apply
- release-closest packet = publish_apply
- trust-closest packet = snapshot-verify or trust_support bundle
- listing-closest packet = asset-publish-list or release_surface bundle
- integration-closest packet = civilization-event-dispatcher or civilization_support bundle
