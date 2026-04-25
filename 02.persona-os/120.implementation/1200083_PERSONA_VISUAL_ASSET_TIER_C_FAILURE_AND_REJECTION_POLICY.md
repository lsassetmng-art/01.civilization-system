# PERSONA VISUAL ASSET TIER C FAILURE AND REJECTION POLICY

status: tier-c-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_182828

purpose:
Fixes exact failure and rejection semantics across visual and asset family members.

rejection_classes:
- invalid_input_rejected
- unauthorized_rejected
- invalid_reference_rejected
- policy_rejected

failure_classes:
- generation_failed
- composition_failed
- upload_failed
- manifest_build_failed
- signed_url_issue_failed

policy_rules:
- rejected remains policy or input decision outcome
- failed remains operational execution outcome
- upload_failed remains distinct from policy_rejected
- signed_url_issue_failed remains distinct from unauthorized_rejected
- generation_failed remains distinct from invalid_input_rejected

hard_rules:
- failure must not silently masquerade as rejection
- rejection must not silently masquerade as failure
- no failure class may imply released_artifact by default

