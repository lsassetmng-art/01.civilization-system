# PERSONA APPROVAL AND PUBLISH DECISION AND APPLY BOUNDARY SPEC

status: design-freeze-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_122151

purpose:
Fixes boundary ownership between approval decision, publish decision, and publish apply.

boundary_split:
- approval-create = request entry
- approval-action = governance decision
- approval-sla = governance timing support
- asset-publish-request-create = release request entry
- asset-publish-request-decide = publish decision
- publish_apply = release application
- asset-publish-list = released result surface

hard_rules:
- approval decision is not equivalent to release application
- publish request creation is not equivalent to release approval
- publish_apply must consume approved or authorized release input only
- listing must show released outputs only
- publish_apply must not be interpreted as canonical mutable truth owner by default

decision_to_apply_rule:
approved_request_or_authorized_candidate
-> publish_apply
-> released artifact or released list surface

