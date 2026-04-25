# PERSONA SIGN EVENT FINAL OPEN REFINEMENT SCOPE

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_212013

purpose:
Defines the only remaining narrow refinements allowed for sign-event without reopening its full design.

allowed_refinements_only:
1. cosmetic public-safe wording polish for sign result fields
2. policy-limited key_selection_hint wording refinement
3. non-semantic signature reference field ordering refinement

not_allowed_without_reopen:
- merging sign-event into verification ownership
- merging sign-event into key publication ownership
- exposing private signing material
- allowing revoked keys for new signatures
- reopening broad trust family design without a concrete contradiction

final_reading:
sign-event is ready for future implementation-entry discussion,
but this packet remains design-only and does not start implementation.

