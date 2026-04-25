# PERSONA EDGE BUNDLE NAVIGATION AND USAGE RULE

status: final-atlas-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_065738

purpose:
Defines how to navigate the PersonaOS Edge design packet set.

navigation_order:
1. read the edge final integrated design overview
2. read the edge final governance refresh
3. read this atlas
4. choose the smallest relevant packet

when_to_open_single_function_packet:
- the question is about one concrete function
- the function has already been packetized individually
- no related bundle-wide contradiction exists

when_to_open_bundle_packet:
- the question spans 2 or more closely related functions
- the relation between those functions matters
- a bundle-level rule is more important than any one function detail

default_bundle_mapping:
- trust support
  - sign-event
  - keygen-once
  - keys-current
  - keys-by-id

- release surface
  - publish_apply
  - asset-publish-list

- snapshot downstream
  - snapshot-revoke
  - revocation-list

- visual asset support
  - visual-job-create
  - visual-compose
  - visual-upload
  - persona-auto-generate-part
  - persona_build_manifest
  - persona_background_get_signed_urls

- civilization support
  - civilization-event-producer
  - event-validate
  - civilization-dead-notify
  - external_dispatcher

- lifecycle
  - persona-create
  - persona-event-history

navigation_rule:
If a packet exists, prefer opening that packet instead of reconstructing the same design from older scattered docs.
