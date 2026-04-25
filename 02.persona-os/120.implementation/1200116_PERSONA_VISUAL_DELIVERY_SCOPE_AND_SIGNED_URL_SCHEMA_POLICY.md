# PERSONA VISUAL DELIVERY SCOPE AND SIGNED URL SCHEMA POLICY

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Closes residual queue item 6 by fixing delivery scope and signed URL schema policy.

policy_decision:
visual delivery and signed URL issuance use explicit delivery scope classes.

delivery_scope_classes:
- internal_only
- authorized_private_delivery
- policy_limited_distribution
- released_public_delivery

signed_url_required_fields:
- asset_reference
- delivery_scope
- requester_context
- expires_at

signed_url_optional_fields:
- delivery_policy_reference
- trace_id
- content_variant_reference

delivery_rules:
- internal_only may not issue public-safe delivery
- authorized_private_delivery requires requester authorization
- policy_limited_distribution requires explicit policy context
- released_public_delivery may still use signed URLs when policy requires controlled delivery
- signed URL issuance never changes release state

hard_rules:
- signed URL is delivery support only
- delivery scope must be explicit
- delivery scope must not be inferred from upload state alone

