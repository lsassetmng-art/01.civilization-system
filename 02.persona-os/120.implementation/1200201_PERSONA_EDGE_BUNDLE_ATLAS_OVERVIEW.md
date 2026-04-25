# PERSONA EDGE BUNDLE ATLAS OVERVIEW

status: final-atlas-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_065738

purpose:
Provides one atlas that connects all major PersonaOS Edge design packets and bundle packets.

current_global_state:
- design_only
- targeted_followup_only
- implementation_started: no
- major_edge_bundle_design: covered

atlas_contents:
single_function_packets:
- persona-state-apply
- snapshot-issue
- snapshot-verify
- publish_apply
- civilization-event-dispatcher
- sign-event
- asset-publish-list

bundle_packets:
- trust_support
- release_surface
- snapshot_downstream
- visual_asset_support
- civilization_support
- lifecycle

atlas_rule:
Use the atlas first.
Then choose either:
- one single-function packet
or
- one bundle packet

Do not reopen broad cross-family design by default.
