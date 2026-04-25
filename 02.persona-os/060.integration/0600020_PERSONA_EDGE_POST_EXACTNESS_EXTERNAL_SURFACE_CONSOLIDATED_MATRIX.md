# PERSONA EDGE POST EXACTNESS EXTERNAL SURFACE CONSOLIDATED MATRIX

status: post-exactness-consolidated
system: PersonaOS
layer: integration
confirmed_at: 20260418_184215

purpose:
Consolidates allowed and forbidden external surface rules after exactness passes.

allowed_external_surface_summary:
- authorized lifecycle entry
- authorized history retrieval
- controlled runtime orchestration terminals
- signed snapshot artifact and verification surfaces
- revocation publication surfaces
- verification-safe key retrieval surfaces
- authorized visual delivery helper surfaces
- approval and publish status surfaces where policy allows
- released listing surfaces only after release application success
- controlled integration validation and dispatch result surfaces

forbidden_external_surface_summary:
- direct mutable truth read
- direct mutable truth update outside approved internal canonical boundary
- unsigned artifact treated as trusted release artifact
- candidate or work-state treated as released artifact
- private signing material exposure
- validation or dispatch surfaces treated as truth owners
- dead-notify treated as success surface

consolidated_rule:
Every external surface must remain explainable by one of:
- signed snapshot surface
- verification or revocation surface
- approved release surface
- controlled operational support surface

