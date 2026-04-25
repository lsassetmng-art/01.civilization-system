# PERSONA VISUAL ASSET AND PUBLISH OWNERSHIP POLICY

status: design-freeze-ready
system: PersonaOS
layer: policy
confirmed_at: 20260418_122151

purpose:
Fixes ownership policy for visual, asset, approval, and publish families.

ownership_rules:
- visual-job-create owns work-state job entry only
- visual-compose owns composition or manifest generation only
- visual-upload owns uploaded output persistence only
- persona-auto-generate-part owns generated candidate creation only
- persona_build_manifest owns manifest generation support only
- persona_background_get_signed_urls owns delivery support only

- approval-create owns approval request creation only
- approval-action owns approval decision only
- approval-sla owns timing monitor only
- asset-publish-request-create owns release request intake only
- asset-publish-request-decide owns release decision only
- publish_apply owns release application only
- asset-publish-list owns released-surface listing only

forbidden_policy_misreads:
- visual-upload is not public release by itself
- signed URL retrieval is not release approval
- publish_apply is not mutable truth owner by default
- asset-publish-list is not approval state owner
- generated candidate assets are not released assets without publish path completion

lineage_rule:
Every released visual or asset surface must be traceable back to:
- source work-state or source authored asset
- approval or publish decision path when required
- release application result

