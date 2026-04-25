# PERSONA VISUAL ASSET AND PUBLISH FAMILY ARCHITECTURE

status: design-freeze-ready
system: PersonaOS
layer: architecture
confirmed_at: 20260418_122151

purpose:
Fixes the architecture of visual, asset, approval, and publish families as a coherent release chain.

visual_asset_family_members:
- visual-job-create
- visual-compose
- visual-upload
- persona-auto-generate-part
- persona_build_manifest
- persona_background_get_signed_urls

approval_publish_family_members:
- approval-create
- approval-action
- approval-sla
- asset-publish-request-create
- asset-publish-request-decide
- asset-publish-list
- publish_apply

architecture_split:
- visual-job-create = work-state intake for renderable or generated visual jobs
- visual-compose = composition or manifest generation boundary
- visual-upload = output persistence boundary for uploaded visual artifacts
- persona-auto-generate-part = generated asset candidate boundary
- persona_build_manifest = build manifest support boundary
- persona_background_get_signed_urls = signed delivery helper boundary

- approval-create = governance entry boundary
- approval-action = governance decision boundary
- approval-sla = governance timing and monitoring boundary
- asset-publish-request-create = release request intake boundary
- asset-publish-request-decide = release governance decision boundary
- publish_apply = release application boundary
- asset-publish-list = released-surface listing boundary

critical_split:
- visual work-state is not immutable release artifact
- generated candidate asset is not automatically published asset
- publish_apply is not canonical mutable truth owner by default
- asset-publish-list is release surface index, not truth owner
- signed URL helper is delivery support, not ownership boundary

release_chain:
visual or asset work-state
-> approval or publish request
-> decision
-> publish_apply
-> released artifact or released listing surface

