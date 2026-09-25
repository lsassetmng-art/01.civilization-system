# ============================================================
# CITY LOCAL ACTIVE TRUTH FINALIZATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
scope: city-local-active-truth-finalization
component: city-local-active-truth-finalization

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the controlled transition
from validated builder draft state
to canonical active city-local truth.

This architecture covers:

- district instance finalization
- facility registry resolution
- active facility placement finalization
- city-local publication readiness

This architecture does not define:

- DB DDL
- payment
- entitlement
- nation creation
- Persona ownership
- automatic seed instantiation


# ============================================================
# 2. SOURCE / TARGET SEPARATION
# ============================================================

Builder draft truth and active runtime truth
must remain separate.

Draft sources may include:

- city boundary selection
- district / zone planning
- infrastructure setup
- initial facility setup
- NATION_DRAFT_FACILITY_PLACEMENT

Active targets include:

- canonical city / territory context
- Civilization District Registry
- Civilization Facility Registry
- Civilization Active Facility Placement

A draft route must never be treated
as an active operation route.


# ============================================================
# 3. REQUIRED PRECONDITIONS
# ============================================================

Finalization requires:

- explicit user confirmation
- successful validation review
- resolvable canonical city identity
- approved city boundary
- valid territory binding
- approved district plan
- valid facility type references
- valid facility placement validation
- no unresolved placement collision
- no ambiguous identity reference

If any required dependency is unresolved,
finalization must fail closed.


# ============================================================
# 4. FINALIZATION SEQUENCE
# ============================================================

Canonical sequence:

1. freeze the reviewed draft revision
2. validate city and territory identity
3. materialize approved district instances
   into Civilization District Registry
4. resolve or create canonical facility registry instances
   without redefining facility identity
5. materialize approved active facility placements
6. validate city-local read projection
7. publish active city-local readiness
8. mark builder completion only after
   active truth publication succeeds


# ============================================================
# 5. EXPLICIT APPROVAL RULE
# ============================================================

City-local active truth
must not be finalized by:

- empty-area tap
- opening city builder
- selecting a template
- selecting a district structure default
- seed evaluation
- initial facility recommendation

Finalization occurs only
after explicit validation and confirmation.


# ============================================================
# 6. ATOMIC PUBLICATION RULE
# ============================================================

Partially finalized city-local truth
must not be exposed as fully active.

Implementation must guarantee either:

- atomic finalization

or:

- a hidden / non-active finalizing state
  until all required canonical records
  are accepted.

Silent partial publication is prohibited.


# ============================================================
# 7. IDEMPOTENCY RULE
# ============================================================

The same reviewed draft revision
must not create duplicate:

- district registry instances
- facility registry instances
- active placement instances

Implementation must bind finalization
to an idempotent source revision
or equivalent canonical request key.


# ============================================================
# 8. FACILITY IDENTITY RULE
# ============================================================

Facility finalization must preserve
facility_registry_id
as canonical facility identity.

facility_id used by UI routing
is an alias for canonical facility identity,
not a second facility registry.


# ============================================================
# 9. DISTRICT IDENTITY RULE
# ============================================================

District finalization must produce
district_registry_id.

district_id used by UI routing
is an alias for district_registry_id,
not an enum value
and not a UI-local identifier.


# ============================================================
# 10. SEED RULE
# ============================================================

Initial facility placement seeds
and existing-nation city default profiles
may guide builder defaults.

They must not instantiate
active districts or facilities
without finalization.


# ============================================================
# 11. FAILURE RULE
# ============================================================

Finalization must stop when:

- city identity is unresolved
- district identity is ambiguous
- facility registry resolution fails
- placement validation fails
- active coordinate truth is incomplete
- territory binding is invalid
- authority / approval is missing
- source revision changed after review

No automatic fallback
may fabricate missing identity or placement data.


# ============================================================
# 12. READINESS RESULT
# ============================================================

Finalization result must resolve to:

- active
- partial_data
- blocked

active:
all required city-local canonical truth
is resolvable.

partial_data:
canonical truth exists
but optional read detail is incomplete.

blocked:
required identity, placement,
boundary, or approval truth is unresolved.


# ============================================================
# 13. FINAL RULE
# ============================================================

Builder completion
must follow canonical truth publication.

Canonical truth publication
must never be inferred
from builder completion UI alone.
