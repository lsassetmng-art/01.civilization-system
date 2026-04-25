# PERSONA KEY LIFECYCLE TO VERIFICATION AVAILABILITY TABLE

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_191037

purpose:
Maps key lifecycle state to verification availability semantics.

lifecycle_states:
- created
- active
- rotated
- revoked
- retired

verification_availability_table:
- created
  - signing_allowed: no_by_default
  - keys-current_visibility: no_by_default
  - keys-by-id_visibility: internal_or_policy_limited
- active
  - signing_allowed: yes_when_policy_allows
  - keys-current_visibility: yes
  - keys-by-id_visibility: yes
- rotated
  - signing_allowed: no_for_new_signatures
  - keys-current_visibility: no_by_default
  - keys-by-id_visibility: yes_for_historical_verification_when_policy_allows
- revoked
  - signing_allowed: no
  - keys-current_visibility: no
  - keys-by-id_visibility: yes_for_historical_verification_when_policy_allows
- retired
  - signing_allowed: no
  - keys-current_visibility: no
  - keys-by-id_visibility: yes_or_no_by_retention_policy

availability_rules:
- active set publication and historical verification continuity are different concerns
- lifecycle state must not be collapsed into a single availability flag
- verification-safe visibility is not the same as signing eligibility

