# ============================================================
# GAME RUNTIME STATE MUTATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official state mutation policy for GameOS Runtime Layer.

This policy applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines:
- allowed mutation domains
- bounded mutation rules
- candidate-only mutation rules
- saveable/transient/prohibited-authority boundaries
- platform safety boundaries
- Persona boundary restrictions


# ============================================================
# 1. ROLE OF MUTATION POLICY
# ============================================================

Runtime mutation policy exists to guarantee that
GameOS runtime behavior remains:

- explicit
- bounded
- replayable
- validation-friendly
- sync-safe
- platform-safe

No runtime family may mutate state outside
approved mutation domains.

No Builder-authored project may introduce
hidden mutation categories.

State mutation is allowed only when:
- the target domain is approved
- the source action is explicit
- the direction is explicit
- the persistence rule is explicit
- the sync implications are explicit where relevant


# ============================================================
# 2. MUTATION DOMAIN CLASSES
# ============================================================

All runtime mutations must belong to one of these classes:

## 2.1 LOCAL EXECUTION MUTATION

Temporary runtime-local mutation used during execution.

Examples:
- preview branch selection state
- temporary battle turn state
- temporary move selection state
- temporary puzzle board state

Local execution mutation is not authoritative by itself.

## 2.2 SAVEABLE CONTINUITY MUTATION

Mutation that may contribute to accepted save continuity.

Examples:
- accepted route progression
- accepted quest progression
- accepted area/stage progression
- accepted inventory continuity
- accepted building/control continuity

Saveable continuity mutation is candidate-based
until accepted through approved GameOS flow.

## 2.3 CANDIDATE MUTATION

Mutation that produces a candidate output,
not final platform truth.

Examples:
- reward candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate
- completion candidate

Candidate mutation is never final truth by itself.

## 2.4 PROHIBITED AUTHORITY MUTATION

Mutation that runtime is not allowed to finalize directly.

Examples:
- final entitlement mutation
- final platform ranking truth
- final achievement truth
- final commerce truth
- final Persona truth mutation
- final seller or marketplace truth mutation


# ============================================================
# 3. ALLOWED MUTATION DOMAINS
# ============================================================

The following mutation domains are allowed
when explicitly declared by runtime family and ruleset.

- narrative variable state
- affection state
- relationship state
- route state
- quest state
- objective state
- area progression state
- stage progression state
- map continuity state
- turn progression state
- unit state
- resource state
- building state
- inventory candidate state
- reward candidate state
- score candidate state
- unlock candidate state
- save candidate state
- replay candidate state
- telemetry candidate state

Allowed does not mean unrestricted.
Each must remain bounded by explicit rules.


# ============================================================
# 4. PROHIBITED MUTATION DOMAINS
# ============================================================

The following mutation domains are prohibited
for direct runtime finalization.

- platform entitlement truth
- platform commerce truth
- platform purchase truth
- platform seller truth
- platform marketplace listing truth
- final platform achievement truth
- final platform ranking truth
- Persona truth
- Persona trust internals
- Persona private memory truth
- Persona unrestricted growth truth
- account identity truth outside approved boundaries

Any runtime attempt to finalize these directly
must be blocking.


# ============================================================
# 5. MUTATION SHAPE RULE
# ============================================================

Every mutation must define:

- source_action
- target_domain
- mutation_type
- mutation_direction
- cap_or_limit where relevant
- persistence_class
- candidate_or_final_class
- validation_rule_ref where relevant

Allowed mutation shapes:

- increment
- decrement
- set_explicit_value
- unlock
- lock
- activate
- suspend
- supersede
- invalidate
- append_candidate
- replace_candidate
- mark_completed
- mark_failed

Unspecified mutation shape is prohibited.


# ============================================================
# 6. PERSISTENCE CLASSES
# ============================================================

Every mutation must declare one persistence class.

## 6.1 TRANSIENT

Valid only during immediate runtime execution.

Examples:
- currently highlighted dialogue choice
- active preview scene pointer
- current puzzle board intermediate state
- current tactical action preview

Transient mutation must not be treated
as accepted continuity truth.

## 6.2 CANDIDATE

Produced for later adjudication or acceptance.

Examples:
- reward candidate
- ranking candidate
- save candidate
- completion candidate

Candidate mutation is durable as a record,
but not final as truth.

## 6.3 ACCEPTED CONTINUITY

Valid only after approved acceptance/adjudication path.

Examples:
- accepted save continuity
- accepted progression continuity
- accepted unlock continuity

Runtime may reference accepted continuity,
but may not fabricate acceptance.

## 6.4 PROHIBITED AUTHORITY

Never directly finalizable by runtime.

Examples:
- final platform purchase state
- final platform entitlement truth
- final Persona truth mutation


# ============================================================
# 7. MUTATION DIRECTION RULE
# ============================================================

Mutation direction must be explicit and monotonic where required.

Examples of monotonic domains:
- completion milestone unlock
- accepted route unlock
- accepted quest completion
- accepted ending unlock

Examples of reversible domains:
- preview-only state
- temporary tactical occupancy
- candidate state before acceptance
- reversible building damage in declared rules

A runtime family must declare whether a domain is:
- monotonic
- reversible
- supersedable
- invalidatable

Undeclared directionality is prohibited.


# ============================================================
# 8. SAVEABLE VS TRANSIENT BOUNDARY
# ============================================================

Every runtime family must distinguish:

- saveable state
- derived state
- transient state
- prohibited-authority state

## Saveable state examples
- accepted route progression
- accepted quest progression
- accepted stage unlock
- accepted inventory continuity
- accepted unit/resource/building continuity

## Derived state examples
- ending eligibility derived from accepted state
- score tier derived from accepted score candidate
- shop availability derived from progression state

## Transient state examples
- in-preview branch pointer
- unresolved action target
- temporary puzzle intermediate board state
- temporary battle microstate

## Prohibited-authority state examples
- final ranking truth
- final commerce truth
- final entitlement truth
- Persona truth mutation

This boundary is mandatory.


# ============================================================
# 9. CANDIDATE-FIRST RULE
# ============================================================

Runtime must be candidate-first for externally meaningful outcomes.

The following must be emitted as candidates first:

- reward outcome
- ranking outcome
- achievement outcome
- replay outcome
- telemetry outcome
- save outcome
- completion outcome

Runtime must not directly convert these into
platform-final truth.

Adjudication, acceptance, or platform-side confirmation
must remain separate.


# ============================================================
# 10. PERSONA BOUNDARY RULE
# ============================================================

Runtime may affect only approved Persona-facing projections.

Allowed:
- presentation shaping
- dialogue style shaping
- reaction style shaping
- approved cast projection selection

Prohibited:
- Persona truth overwrite
- unrestricted trust mutation
- unrestricted memory mutation
- unrestricted growth mutation

Mutation policy must reject any runtime path
that attempts to cross this boundary.


# ============================================================
# 11. COMMERCE / ENTITLEMENT BOUNDARY RULE
# ============================================================

Runtime may reference:
- entitlement presence
- approved purchase-linked access state
- approved package availability state

Runtime may not finalize:
- purchase success truth
- refund truth
- entitlement issuance truth
- license revocation truth

These belong to GameOS Core / Marketplace-connected layers,
not runtime execution.


# ============================================================
# 12. RANKING / ACHIEVEMENT BOUNDARY RULE
# ============================================================

Runtime may emit:
- ranking candidate
- achievement candidate

Runtime may not finalize:
- ranking table truth
- achievement grant truth

These require GameOS sync adjudication
or platform-side confirmation.

Any runtime design that assumes direct finality
must be blocking.


# ============================================================
# 13. FAMILY-SPECIFIC MUTATION GUIDANCE
# ============================================================

## VN / DATING
Allowed:
- narrative variables
- affection variables
- relationship progression
- route unlock candidates
- ending unlock candidates

Prohibited:
- hidden affection mutation
- unrestricted Persona truth mutation

## RPG
Allowed:
- quest progression
- inventory candidate mutation
- reward candidate mutation
- level/progression mutation
- accepted area continuity mutation

Prohibited:
- unrestricted economy mutation
- unrestricted entitlement mutation

## PUZZLE
Allowed:
- stage progression
- score candidate mutation
- retry state mutation
- reward candidate mutation

Prohibited:
- direct ranking finality
- hidden score mutation

## STRATEGY
Allowed:
- turn progression
- unit/resource/building continuity mutation
- victory/defeat candidates
- control/capture continuity mutation

Prohibited:
- unrestricted persistence outside declared continuity
- direct platform reward finality


# ============================================================
# 14. VALIDATION REQUIREMENT
# ============================================================

Mutation legality must be validated at:

- editing validation
- export validation
- publish validation

Validation must confirm:
- mutation domain legality
- persistence class legality
- directionality legality
- boundary compliance
- candidate/finality legality

Illegal mutation must be blocking.


# ============================================================
# 15. FINAL POLICY RULE
# ============================================================

Runtime state mutation inside GameOS must remain bounded.

Core summary:

- allowed domains must be explicit
- prohibited domains must never be directly finalized
- saveable, transient, candidate, and prohibited-authority state
  must remain distinct
- candidate-first is mandatory for externally meaningful outcomes
- Persona truth and platform commerce truth are out of direct runtime scope
