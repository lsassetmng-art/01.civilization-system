# PERSONA NON TOP5 BUNDLE NEXT ACTION AND PACKETIZATION RULE

status: bundle-operationalization-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_114219

purpose:
Defines the next-action rule and whether each non-top5 bundle should stay bundled or later split further.

bundle_first_rule:
Stay at bundle level unless a concrete one-function implementation-entry need appears.

bundle_next_actions:
- trust_support
  - default_next_action: stay bundle-first
  - single_function_split_later_if_needed:
    - keygen-once
    - keys-current
    - keys-by-id
  - note:
    sign-event is already packetized, so use trust_support only when signing and key lookup relation matters together

- release_surface
  - default_next_action: use publish_apply or asset-publish-list packet first
  - bundle_use_case:
    - apply-to-listing relation
    - public-safe release surface consistency
  - note:
    this bundle already wraps two packetized functions; bundle-first is only for relation questions

- snapshot_downstream
  - default_next_action: stay bundle-first
  - single_function_split_later_if_needed:
    - snapshot-revoke
    - revocation-list
  - note:
    split only if invalidation or publication fields become implementation-entry priority

- visual_asset_support
  - default_next_action: stay bundle-first
  - single_function_split_later_if_needed:
    - visual-job-create
    - visual-compose
    - visual-upload
    - persona-auto-generate-part
    - persona_build_manifest
    - persona_background_get_signed_urls
  - note:
    split only if one function becomes an active implementation-entry target

- civilization_support
  - default_next_action: stay bundle-first
  - single_function_split_later_if_needed:
    - civilization-event-producer
    - event-validate
    - civilization-dead-notify
    - external_dispatcher
  - note:
    dispatcher is already packetized; use bundle for sibling relations around it

- lifecycle
  - default_next_action: stay bundle-first
  - single_function_split_later_if_needed:
    - persona-create
    - persona-event-history
  - note:
    split only if create or history becomes active implementation-entry priority

packetization_rule:
Do not create new one-function packets for non-top5 bundles by default.
Create them only when:
- one function becomes the active next packet
- one function has a contradiction that the bundle cannot isolate
- one function needs its own gate review
