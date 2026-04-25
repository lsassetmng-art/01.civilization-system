# PERSONA PUBLISH LISTING AND RELEASE SURFACE SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_122151

purpose:
Fixes listing and release-surface semantics for publish family behavior.

released_surface_definition:
A released surface is a policy-authorized and applied output that is eligible for listing or authorized delivery.

listing_rules:
- asset-publish-list must expose released outputs only
- pending requests must not appear as released outputs
- rejected requests must not appear as released outputs
- candidate assets must not appear as released outputs without publish_apply success

surface_split:
- approval state surface
- publish decision surface
- release application surface
- released listing surface

hard_rules:
- listing must not leak internal work-state
- listing must not leak mutable approval internals beyond allowed status surface
- listing must remain downstream from publish_apply result

