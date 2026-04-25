# PERSONA KEYS CURRENT AND BY ID ROLE SPLIT MATRIX

status: residual-queue-closed-candidate
system: PersonaOS
layer: implementation
confirmed_at: 20260418_191037

purpose:
Fixes the exact role split between keys-current and keys-by-id.

keys_current_role:
- publishes active verification-safe key set
- optimized for current verification consumers
- does not guarantee complete historical coverage
- should remain compact and policy-safe

keys_by_id_role:
- resolves a specific key_id
- supports historical verification continuity
- may return rotated historical verification-safe material when policy allows
- may return revoked or retired verification-safe material when historical verification policy allows

role_matrix:
- active key
  - keys-current: yes
  - keys-by-id: yes
- rotated but still verification-relevant key
  - keys-current: no by default
  - keys-by-id: yes when policy allows
- revoked key
  - keys-current: no
  - keys-by-id: historical verification-safe only when policy allows
- retired key
  - keys-current: no
  - keys-by-id: historical verification-safe only when policy allows

matrix_rules:
- keys-current is for active-set publication
- keys-by-id is for exact-reference continuity
- historical continuity must not be inferred from keys-current alone

