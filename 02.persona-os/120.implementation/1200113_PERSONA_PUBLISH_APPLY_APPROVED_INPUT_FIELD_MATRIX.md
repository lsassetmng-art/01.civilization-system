# PERSONA PUBLISH APPLY APPROVED INPUT FIELD MATRIX

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_193641

purpose:
Provides the exact field matrix for publish_apply approved input.

field_matrix:
- approval_source_type
  - required: yes
  - meaning: identifies approved input class
- approval_source_reference
  - required: yes
  - meaning: exact approved object reference
- release_subject_reference
  - required: yes
  - meaning: asset or release subject to apply
- release_scope
  - required: yes
  - meaning: defines publication scope
- applied_by
  - required: yes
  - meaning: release application actor
- release_context
  - required: no
  - meaning: policy-limited apply context
- lineage_reference
  - required: conditional
  - meaning: source-to-release traceability
- apply_trace_id
  - required: no
  - meaning: correlation and audit link
- policy_reference
  - required: no
  - meaning: policy rule selection context

validation_rules:
- approval_source_type and approval_source_reference must match
- approval state must already be approved
- release_subject_reference must be policy-eligible
- lineage_reference is mandatory when release artifact traceability requires it

