# PERSONA VISUAL DELIVERY SCOPE AND SIGNED URL FIELD MATRIX

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Provides the exact field matrix for visual delivery scope and signed URL issuance.

field_matrix:
- asset_reference
  - required: yes
  - meaning: target delivery object
- delivery_scope
  - required: yes
  - meaning: one of the explicit delivery scope classes
- requester_context
  - required: yes
  - meaning: authorization and audience context
- expires_at
  - required: yes
  - meaning: signed URL expiry
- delivery_policy_reference
  - required: no
  - meaning: policy-controlled delivery logic reference
- trace_id
  - required: no
  - meaning: audit and correlation reference
- content_variant_reference
  - required: no
  - meaning: variant-specific asset output

matrix_rules:
- authorized_private_delivery must carry requester_context
- policy_limited_distribution should carry delivery_policy_reference when used
- released_public_delivery does not eliminate expiry semantics when signed URLs are used
- no signed URL field may imply publish approval or release mutation

