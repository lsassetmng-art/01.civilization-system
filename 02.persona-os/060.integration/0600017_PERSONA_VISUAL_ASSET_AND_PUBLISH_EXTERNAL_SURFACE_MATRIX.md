# PERSONA VISUAL ASSET AND PUBLISH EXTERNAL SURFACE MATRIX

status: design-freeze-ready
system: PersonaOS
layer: integration
confirmed_at: 20260418_122151

purpose:
Fixes what external surfaces are allowed for visual, asset, approval, and publish families.

allowed_external_surface:
- released visual artifact surface
- released asset listing surface
- publish request and decision status surfaces where policy allows
- signed URL based delivery helper for approved asset access
- build manifest output where policy allows non-truth consumption

forbidden_external_surface:
- direct mutable work-state exposure from visual-job-create
- direct mutable generation-state exposure from persona-auto-generate-part
- direct mutable draft or candidate state exposure as if released
- direct mutable truth update through publish or visual endpoints
- unapproved artifact exposed as public release artifact

function_surface_notes:
- visual-job-create = internal or controlled work-state entry
- visual-compose = internal composition support until release policy binds output
- visual-upload = upload completion path, not public release by itself
- persona_background_get_signed_urls = delivery helper only for authorized surfaces
- asset-publish-list = list released artifacts only
- publish_apply = apply release decision, not general truth mutation

