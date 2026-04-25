# PERSONA APPROVAL PUBLISH TIER B FAILURE AND REJECTION POLICY

status: tier-b-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182500

purpose:
Fixes exact rejection and failure semantics across approval and publish family members.

rejection_classes:
- authority_rejected
- policy_rejected
- invalid_reference_rejected
- revision_requested

failure_classes:
- persistence_failed
- dependency_failed
- timing_evaluation_failed
- release_apply_failed
- listing_generation_failed

policy_rules:
- rejection remains governance or policy outcome
- failure remains operational outcome
- revision_requested remains distinct from rejected
- listing_failure remains distinct from publish_apply_failure
- approval_sla warning or breach is not itself a publish decision

hard_rules:
- failed must never be silently remapped to rejected
- rejected must never be silently remapped to failed
- revision_requested must remain visible as its own path when used

