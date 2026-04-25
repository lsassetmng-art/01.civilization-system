# PERSONA CIVILIZATION EVENT DISPATCHER FINAL OPEN REFINEMENT SCOPE

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_211826

purpose:
Defines the only remaining narrow refinements allowed for civilization-event-dispatcher without reopening its full design.

allowed_refinements_only:
1. concrete numeric retry tuning inside the already-fixed retry budget classes
2. cosmetic public-safe wording polish for dispatch result fields
3. policy-specific exhaustion outcome selection wording

not_allowed_without_reopen:
- merging dispatcher into validator ownership
- merging dispatcher into runtime truth mutation ownership
- allowing implicit infinite retry
- collapsing dispatch_exhausted into generic failed
- reopening broad civilization integration family design without a concrete contradiction

final_reading:
civilization-event-dispatcher is ready for future implementation-entry discussion,
but this packet remains design-only and does not start implementation.

