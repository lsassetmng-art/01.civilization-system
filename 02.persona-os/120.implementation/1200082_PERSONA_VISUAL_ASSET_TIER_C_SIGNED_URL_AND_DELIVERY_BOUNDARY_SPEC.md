# PERSONA VISUAL ASSET TIER C SIGNED URL AND DELIVERY BOUNDARY SPEC

status: tier-c-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182828

purpose:
Fixes exact signed URL and authorized delivery boundary semantics.

signed_url_boundary:
- persona_background_get_signed_urls is delivery support only
- signed URL issuance requires authorization context
- signed URL issuance does not change release state
- signed URL issuance does not grant publish approval
- signed URL issuance does not expose mutable truth

delivery_states:
- internal_only
- authorized_delivery_candidate
- released_artifact_public_or_policy_limited_surface

delivery_rules:
- authorized delivery may exist without public release
- public released surface may exist without signed URL requirement depending on policy
- signed URL helper must respect expiry and authorization scope
- signed URL helper must remain downstream from asset reference validity

hard_rules:
- delivery helper is not publish_apply
- delivery helper is not listing
- delivery helper is not release approval

