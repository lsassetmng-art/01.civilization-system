# PERSONA TRUST SUPPORT KEY LIFECYCLE AND CONTINUITY SUMMARY

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_002344

purpose:
Condenses lifecycle state and verification continuity semantics across the trust support bundle.

lifecycle_states:
- created
- active
- rotated
- revoked
- retired

state meaning summary:
- created
  - internal lifecycle state only
  - not automatically current-set published
- active
  - eligible for new signing when policy allows
  - eligible for keys-current publication
- rotated
  - no default new-signature use
  - may remain verification-relevant through keys-by-id
- revoked
  - never allowed for new signatures
  - may remain historically discoverable for verification-safe lookup when policy allows
- retired
  - historical reference only under retention policy

continuity rules:
- old signed artifacts may rely on keys-by-id after the key disappears from keys-current
- verification-safe visibility is not equal to signing eligibility
- active publication and historical continuity are different concerns
- lifecycle state must not collapse into one generic availability flag

trust chain relation:
keygen-once -> sign-event -> keys-current / keys-by-id -> snapshot-verify or other trust consumers

hard rules:
- rotation must not break historical verification continuity
- revocation must block new signatures without erasing verification history semantics
- retention policy may later narrow retired-key lookup without changing the role split
