# PERSONA PUBLISH APPLY DEPENDENCY LINEAGE AND LISTING TOUCHPOINT FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_111419

purpose:
Freezes the dependency surface and lineage/listing touchpoint model for publish_apply.

upstream_touchpoints:
- approved approval_source_reference
- releasable release_subject_reference
- policy-valid release_scope
- authority validation for applied_by
- lineage_reference when required by policy

downstream_touchpoints:
- released output identity for downstream listing
- asset-publish-list as released listing surface reader
- release surface bundle as cross-checking reference only

lineage_rules:
- publish_apply must preserve candidate-to-release lineage
- released output must remain attributable to approval_source_reference and release_subject_reference
- release lineage must remain distinct from work-state lineage
- lineage_reference remains mandatory where policy requires traceability

listing_readiness_rules:
- only publish_apply_succeeded outputs may become listing-ready
- publish_apply_rejected outputs are not listing-ready
- publish_apply_failed outputs are not listing-ready
- pending, rejected, returned_for_revision, and candidate-only states are never listing-ready

freeze_rules:
- no new mandatory dependency may be added casually
- approved-input-only rule remains the entry gate
- asset-publish-list remains downstream reading surface only
- listing readiness does not equal listing publication itself
