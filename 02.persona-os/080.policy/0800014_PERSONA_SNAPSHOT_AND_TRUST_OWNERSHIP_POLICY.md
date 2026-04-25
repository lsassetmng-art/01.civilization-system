# PERSONA SNAPSHOT AND TRUST OWNERSHIP POLICY

status: design-freeze-ready
system: PersonaOS
layer: policy
confirmed_at: 20260418_121843

purpose:
Fixes ownership and role boundaries for snapshot and trust functions.

ownership_rules:
- snapshot-issue owns immutable release issuance only
- snapshot-revoke owns invalidation decision application only
- snapshot-verify owns trust verification only
- revocation-list owns revocation publication only
- sign-event owns signing support only
- keygen-once owns key generation only
- keys-by-id and keys-current own verification key retrieval only

forbidden_policy_misreads:
- snapshot-issue is not canonical mutable truth owner
- sign-event is not canonical mutable truth owner
- verification edges are not release issuers
- key retrieval edges are not revocation owners
- revocation-list is not mutable truth or release issuance owner

policy_split:
- release artifact lineage belongs to snapshot family
- trust material lifecycle belongs to key and sign family
- verification outcome belongs to trust verification path

