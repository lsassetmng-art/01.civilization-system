# PERSONA NON TOP5 BUNDLE TO TOP5 RELATION MAP

status: bundle-operationalization-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_114219

purpose:
Shows how each non-top5 bundle connects to the already-advanced top5 packets.

top5_reference_packets:
- persona-state-apply
- snapshot-issue
- snapshot-verify
- publish_apply
- civilization-event-dispatcher

relation_map:
- trust_support
  - strongest_top5_links:
    - snapshot-issue
    - snapshot-verify
  - secondary_top5_link:
    - persona-state-apply
  - reading:
    trust support explains signing and key lookup surfaces that support issuance and verification

- release_surface
  - strongest_top5_link:
    - publish_apply
  - reading:
    release_surface is the wider relation packet around publish_apply and asset-publish-list

- snapshot_downstream
  - strongest_top5_links:
    - snapshot-issue
    - snapshot-verify
  - reading:
    snapshot_downstream explains revoke and publication behavior downstream from issuance and alongside verification interpretation

- visual_asset_support
  - strongest_top5_link:
    - publish_apply
  - secondary_top5_link:
    - persona-state-apply only when event-driven generation discussion matters
  - reading:
    visual and asset support explain candidate-state to release-ready paths that eventually meet publish path

- civilization_support
  - strongest_top5_link:
    - civilization-event-dispatcher
  - secondary_top5_link:
    - persona-state-apply
  - reading:
    civilization_support explains producer, validate, dead-notify, and external routing around the already-advanced dispatcher

- lifecycle
  - weak_top5_link:
    - persona-state-apply only by system adjacency, not by role merger
  - reading:
    lifecycle remains mostly parallel to top5 runtime and release pivots, not subordinate to them

relation_rule:
If a question is mainly about the top5 pivot itself, open the top5 packet first.
If the question is about its siblings or the surrounding relation, open the matching non-top5 bundle.
