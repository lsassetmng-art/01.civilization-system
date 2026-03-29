# ============================================================
# GAME RULESET RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the shared ruleset runtime architecture of GameOS.

This architecture defines the lower execution layer
shared by all approved runtime families.

It applies to:
- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

The ruleset runtime is responsible for:

- parameterized execution semantics
- explicit state transition semantics
- event trigger semantics
- progression rule semantics
- reward rule semantics
- saveability boundary semantics
- preview-safe deterministic interpretation

It is a mandatory internal subsystem of GameOS Runtime Layer.


# ============================================================
# 1. ROLE OF RULESET RUNTIME
# ============================================================

The ruleset runtime is the shared interpreter layer
used by all GameOS runtime families.

Runtime families define:
- family-specific structures
- family-specific allowed objects
- family-specific rule surfaces

Ruleset runtime defines:
- how declared rules are interpreted
- how rule evaluation is sequenced
- how state mutation is bounded
- how deterministic execution is preserved

Ruleset runtime must not execute arbitrary creator code.

Primary principle:

declared rule
-> interpreted by ruleset runtime
-> bounded mutation
-> explicit result


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

The ruleset runtime must provide:

- rule resolution
- parameter resolution
- condition evaluation
- action resolution
- mutation resolution
- progression resolution
- reward candidate resolution
- save candidate resolution
- preview-safe dry-run resolution

These responsibilities are mandatory.


# ============================================================
# 3. RULESET PROFILE MODEL
# ============================================================

A ruleset profile is the formal declaration of
shared execution semantics for a game package.

A ruleset profile must define:

- ruleset_profile_code
- runtime_family_code
- supported_rule_categories
- supported_variable_categories
- supported_mutation_categories
- supported_reward_categories
- supported_candidate_categories
- evaluation_order
- override_allowance_summary

A Builder project must bind to exactly one
active ruleset profile at export time.


# ============================================================
# 4. RULE CATEGORIES
# ============================================================

The ruleset runtime must support explicit rule categories.

Minimum categories:

- condition rule
- progression rule
- unlock rule
- reward rule
- score rule
- retry rule
- turn rule
- route rule
- ending rule
- battle result rule
- shop rule
- saveability rule
- preview rule

A runtime family may use only categories
approved for that family.

No hidden rule category is allowed.


# ============================================================
# 5. EVALUATION ORDER
# ============================================================

Every ruleset profile must declare evaluation order.

Minimum evaluation stages:

1. input validity evaluation
2. condition evaluation
3. action eligibility evaluation
4. mutation resolution
5. progression resolution
6. reward candidate resolution
7. save candidate resolution
8. preview/export annotations

This order must remain explicit.

Family-specific variants may extend this order,
but may not bypass it.


# ============================================================
# 6. PARAMETER RESOLUTION
# ============================================================

Ruleset runtime must resolve parameters explicitly.

Parameter sources may include:

- runtime profile defaults
- template defaults
- project overrides
- advanced override zone values
- approved asset metadata
- approved Persona projection metadata

Parameter resolution priority must be explicit.

Recommended order:

1. runtime defaults
2. ruleset defaults
3. template defaults
4. project override
5. advanced override

Unresolvable parameter state must be blocking.


# ============================================================
# 7. CONDITION EVALUATION
# ============================================================

Conditions must be declarative and replayable.

Allowed condition sources:

- explicit variable state
- explicit progression state
- explicit route state
- explicit area/stage/map state
- explicit relationship or affection state
- explicit resource/building/unit state
- explicit prior completion state

Prohibited sources:

- arbitrary hidden engine state
- unrestricted remote mutable state
- unrestricted Persona truth internals
- non-declared ad hoc logic

Condition evaluation must produce:
- true
- false
- invalid
- unresolved

Unresolved condition state must be blocking
for export-ready structures.


# ============================================================
# 8. MUTATION RESOLUTION
# ============================================================

Mutation must be bounded.

Allowed mutation categories:

- variable mutation
- progression mutation
- unlock mutation
- relationship mutation
- route mutation
- inventory candidate mutation
- score candidate mutation
- resource mutation
- building state mutation
- quest state mutation
- stage/area/map continuity mutation

Each mutation must define:

- target domain
- source action
- allowed direction
- cap or threshold if relevant
- persistence rule
- sync candidate eligibility if relevant

No unrestricted mutation is allowed.


# ============================================================
# 9. PROGRESSION RESOLUTION
# ============================================================

Progression is a first-class ruleset concern.

The ruleset runtime must interpret:

- level progression
- route progression
- quest progression
- stage progression
- turn progression
- resource progression
- unlock progression
- ending progression

Progression rules must always be:

- explicit
- bounded
- validation-friendly
- replayable from accepted state


# ============================================================
# 10. REWARD RESOLUTION
# ============================================================

Rewards must be resolved as candidates first.

Reward categories may include:

- item candidate
- currency candidate
- unlock candidate
- cosmetic candidate
- route or ending unlock candidate
- progression candidate

Ruleset runtime may generate reward candidates.

Ruleset runtime must not directly finalize
platform commerce truth or entitlement truth
outside approved platform boundaries.

Reward source must always remain explicit.


# ============================================================
# 11. SAVEABILITY BOUNDARY
# ============================================================

Ruleset runtime must distinguish:

- saveable state
- derived state
- transient state
- prohibited-authority state

Saveable state examples:
- accepted progression
- accepted map/area/stage continuity
- accepted inventory continuity
- accepted route state

Transient state examples:
- in-preview temporary branch
- in-battle transient turn microstate
- unresolved client-only intermediate score state

This distinction is mandatory.


# ============================================================
# 12. PREVIEW RESOLUTION
# ============================================================

Preview uses the same ruleset runtime,
but in sandbox mode.

Sandbox mode must:

- discard production effects
- block production ranking finality
- block production commerce mutation
- block production entitlement mutation
- block production Persona mutation
- mark outputs as preview-only

Preview is a dry-run interpretation mode,
not production execution truth.


# ============================================================
# 13. EXPORT RELATION
# ============================================================

Ruleset runtime must define export-freezable semantics.

Export must freeze:

- runtime family
- ruleset profile
- evaluation order
- allowed mutation categories
- candidate generation categories
- required metadata categories

A package with unresolved ruleset semantics
must not be exportable.


# ============================================================
# 14. SYNC RELATION
# ============================================================

Ruleset runtime must define which outputs are candidate-emitting outputs.

Candidate categories may include:
- save candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate
- reward candidate
- progression completion candidate

Ruleset runtime must never claim final truth
for these outputs from unadjudicated client execution.

Sync adjudication remains mandatory.


# ============================================================
# 15. PERSONA BOUNDARY
# ============================================================

Ruleset runtime may consume approved Persona projection data only.

Allowed:
- presentation shaping
- dialogue shaping
- reaction shaping
- approved cast metadata

Prohibited:
- Persona truth mutation
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation

Persona is external truth.
Ruleset runtime is internal game execution truth.


# ============================================================
# 16. BUILDER RELATION
# ============================================================

Builder depends on ruleset runtime for:

- editable zone exposure
- override legality
- validation semantics
- preview behavior
- export metadata completeness

Builder must not invent ruleset behavior.
Builder must only expose approved rule surfaces.


# ============================================================
# 17. FINAL ARCHITECTURAL RULE
# ============================================================

The ruleset runtime is the shared interpreter layer
inside GameOS Runtime Layer.

It is mandatory for all approved runtime families.

Core summary:

- all runtime behavior is declarative
- condition evaluation is explicit
- mutation is bounded
- progression is first-class
- rewards are candidates first
- saveability is explicit
- preview is sandboxed
- sync finality is external to runtime
