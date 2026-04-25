# PERSONA STATE APPLY FINAL OPEN REFINEMENT SCOPE

status: final-targeted-baseline
system: PersonaOS
layer: implementation
confirmed_at: 20260418_204614

purpose:
Defines the only remaining narrow refinements allowed for persona-state-apply without reopening its full design.

allowed_refinements_only:
1. event_type-by-event_type snapshot trigger class enumeration
2. cosmetic public-safe wording polish for external compact response reasons
3. policy tuning for audit helper wording, without changing ownership boundaries

not_allowed_without_reopen:
- changing truth ownership
- merging snapshot issue into persona-state-apply ownership
- changing idempotency key away from event_id
- collapsing duplicate_noop into generic success
- reopening cross-family runtime design without a concrete contradiction

final_reading:
persona-state-apply is ready for future implementation-entry discussion,
but this packet remains design-only and does not start implementation.

