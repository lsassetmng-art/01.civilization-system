# PERSONA TRUST SUPPORT FINAL OPEN REFINEMENT SCOPE

status: final-bundle-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260419_002344

purpose:
Defines the only remaining narrow refinements allowed for the trust support bundle without reopening its full design.

allowed refinements only:
1. cosmetic public-safe wording polish for sign status or key status fields
2. policy-limited wording refinement for key_selection_hint
3. retention-window wording refinement for retired-key historical lookup
4. non-semantic field ordering polish for current-set publication output

not allowed without reopen:
- merging sign-event into verification ownership
- merging keys-current into historical continuity ownership
- treating keys-by-id as active-set publication
- exposing private key material
- allowing revoked keys for new signatures
- reopening broad trust family design without a concrete contradiction

final reading:
The trust support bundle is ready for future implementation-entry discussion,
but this bundle remains design-only and does not start implementation.
