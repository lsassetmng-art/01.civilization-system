# PERSONA EDGE 29 CROSS FAMILY EXTERNAL SURFACE FINAL MATRIX

status: design-freeze-ready
system: PersonaOS
layer: integration
confirmed_at: 20260418_172452

purpose:
Fixes the final allowed and forbidden external surface model across all confirmed Edge families.

allowed_surface_by_family:
- lifecycle
  - authorized persona creation surface
  - authorized history retrieval surface
- runtime_engine
  - controlled event intake and terminal result surface
  - signing support surface where policy allows
- runtime_visual
  - controlled work-state entry and authorized upload support
- asset
  - manifest support and signed delivery helper surface where authorized
- approval_publish
  - request status, decision status, release apply result, and released list surface where policy allows
- security_snapshot
  - signed snapshot, verification result, revocation state, revocation publication surface
- security_keys
  - verification-safe public key or key reference surface
- integration_civilization
  - controlled production, validation, dispatch result, dead notification, and outward dispatch surfaces

globally_forbidden_surface:
- direct mutable truth read through any external-facing edge
- direct mutable truth update through any external-facing edge except approved internal canonical apply boundary paths
- private signing material exposure
- candidate or work-state exposed as if released artifact
- unvalidated dispatch into PersonaOS truth boundary
- unsigned artifact exposed as trusted release artifact

final_external_surface_rule:
PersonaOS external consumption remains constrained to signed snapshot and event contract oriented surfaces,
plus tightly controlled operational surfaces for approval, listing, verification, and delivery helpers.

