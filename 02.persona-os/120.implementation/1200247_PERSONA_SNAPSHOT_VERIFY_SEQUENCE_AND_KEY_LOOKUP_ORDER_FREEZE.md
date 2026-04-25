# PERSONA SNAPSHOT VERIFY SEQUENCE AND KEY LOOKUP ORDER FREEZE

status: no-code-implementation-entry
system: PersonaOS
layer: implementation
confirmed_at: 20260419_110313

purpose:
Freezes the canonical verification stage order and key lookup interpretation for snapshot-verify.

canonical_stage_order:
1. request_intake
2. artifact_reference_resolution
3. basic_shape_and_malformed_check
4. verification_context_resolution
5. active_key_lookup_path
6. exact_or_historical_key_lookup_path
7. signature_and_integrity_check
8. revocation_state_check
9. public_safe_outcome_mapping
10. response_emit

stage_owner_summary:
- request_intake, artifact_reference_resolution, basic_shape_and_malformed_check, verification_context_resolution, signature_and_integrity_check, revocation_state_check, public_safe_outcome_mapping, response_emit
  - owner: snapshot-verify boundary
- active_key_lookup_path
  - owner: keys-current dependency, read-only
- exact_or_historical_key_lookup_path
  - owner: keys-by-id dependency, read-only

freeze_rules:
- malformed check remains upstream from final trust result mapping
- active key lookup may be attempted before exact historical lookup when policy and reference style allow
- historical continuity path remains explicit and must not disappear implicitly
- revocation check remains distinct from invalid signature check
- response_emit remains after public-safe outcome mapping is complete

hard_rules:
- verification order may not casually collapse revoked into invalid
- keys-current and keys-by-id roles may not be merged by accident
- verification ownership may not be merged into issuance or revocation ownership
