# PERSONA SNAPSHOT AND TRUST CHAIN ARCHITECTURE

status: design-freeze-ready
system: PersonaOS
layer: architecture
confirmed_at: 20260418_121843

purpose:
Fixes the architecture of the snapshot family and trust family as one PersonaOS release chain.

core_chain:
state_apply
-> snapshot-issue
-> sign-event or equivalent signing support
-> snapshot-verify
-> snapshot-revoke when needed
-> revocation-list publication

family_members:
snapshot_family:
- snapshot-issue
- snapshot-revoke
- snapshot-verify
- revocation-list

trust_family:
- sign-event
- keygen-once
- keys-by-id
- keys-current

architectural_split:
- state_apply = canonical mutable truth mutation boundary
- snapshot-issue = immutable release artifact boundary
- sign-event = signature generation support boundary
- snapshot-verify = verification boundary
- snapshot-revoke = invalidation boundary
- revocation-list = public trust publication boundary
- keygen-once / keys-by-id / keys-current = key management support boundary

hard_rules:
- mutable truth and snapshot artifact must remain distinct
- snapshot-issue must consume release-safe input only
- verification must not mutate truth
- revocation must not rewrite mutable truth
- revocation-list is publication surface, not truth mutation surface

