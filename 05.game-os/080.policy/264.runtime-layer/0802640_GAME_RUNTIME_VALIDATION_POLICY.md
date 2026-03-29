# ============================================================
# GAME RUNTIME VALIDATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official validation policy for GameOS Runtime Layer.

This policy applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines:
- validation stages
- severity model
- blocking rules
- compatibility rules
- export safety rules
- publish safety rules
- Persona boundary validation
- sync-facing validation principles


# ============================================================
# 1. VALIDATION ROLE
# ============================================================

Runtime validation exists to guarantee:

- execution predictability
- template compatibility
- export safety
- publish readiness
- sync-safe boundaries
- non-Persona asset boundary safety
- declarative runtime integrity

Validation is mandatory.

No Builder project may become a publishable package
without passing required runtime validation stages.


# ============================================================
# 2. VALIDATION STAGES
# ============================================================

All runtime families must support three validation stages.

## 2.1 EDITING VALIDATION

Purpose:
Provide immediate feedback during authoring.

Typical scope:
- required field presence
- unresolved references
- invalid block relations
- missing asset assignments
- invalid condition declarations
- invalid rule parameters

Editing validation is fast and iterative.

Editing validation may run:
- on manual save
- on explicit validate action
- on selected structural changes


## 2.2 EXPORT VALIDATION

Purpose:
Guarantee export package integrity.

Typical scope:
- runtime family resolution
- ruleset resolution
- template compatibility
- asset family completeness
- graph continuity
- lifecycle integrity
- structure completeness
- required metadata completeness

Export validation is stronger than editing validation.

Export must be blocked if export validation fails.


## 2.3 PUBLISH VALIDATION

Purpose:
Guarantee publish-safe submission quality.

Typical scope:
- seller/title/release linkage
- runtime metadata completeness
- moderation-sensitive configuration
- Persona boundary compliance
- marketplace/export consistency
- compatibility profile completeness
- store/publish facing readiness

Publish validation is the strongest stage.

Submission and publish activation must be blocked
if publish validation fails.


# ============================================================
# 3. VALIDATION SEVERITY MODEL
# ============================================================

All validation findings must be classified as:

- blocking
- warning
- info

## 3.1 BLOCKING

A blocking issue prevents:
- export
- submission
- publish
depending on stage

Examples:
- unresolved runtime family
- broken quest chain
- missing required stage rule
- invalid ending resolution
- missing required asset family
- prohibited Persona usage
- runtime ambiguity

## 3.2 WARNING

A warning does not always block,
but indicates degraded quality or likely failure risk.

Examples:
- optional asset missing
- weak branch coverage
- poor route balance
- unused block
- suspicious score formula
- oversized package component

## 3.3 INFO

Informational diagnostics only.

Examples:
- unused optional template zone
- recommended metadata missing
- non-optimal asset format
- possible optimization suggestions


# ============================================================
# 4. UNIVERSAL BLOCKING RULES
# ============================================================

The following issues must always be blocking.

- runtime family unresolved
- multiple active runtime families bound to one export
- ruleset profile unresolved
- required template family unresolved
- required asset family unresolved
- invalid export metadata
- invalid compatibility profile
- broken scene/area/stage/map continuity
- impossible victory/ending/clear resolution
- prohibited Persona truth mutation attempt
- prohibited entitlement mutation attempt
- prohibited ranking finalization attempt
- prohibited economy mutation attempt
- invalid sync boundary declaration

These are non-negotiable.


# ============================================================
# 5. RUNTIME FAMILY COMPATIBILITY RULE
# ============================================================

A Builder project must resolve to exactly one
approved runtime family.

Allowed:
- one project -> one runtime family

Prohibited:
- one project -> multiple active runtime families
- runtime family inferred only implicitly
- runtime family omitted at export

A template family must bind to exactly one approved runtime family.

A project must not be exportable when:
- template family and runtime family disagree
- runtime family and ruleset profile disagree
- export profile and runtime family disagree


# ============================================================
# 6. TEMPLATE VALIDATION RULE
# ============================================================

Validation must confirm:

- template family exists
- template tier exists
- required blocks exist
- protected zone integrity remains intact
- editable zone mutations are allowed
- advanced override changes occur only in allowed zones

The following must be blocking:
- mutation of protected zone in non-advanced path
- missing required template block
- missing required template asset family
- incompatible template family / runtime family pair


# ============================================================
# 7. ASSET FAMILY VALIDATION RULE
# ============================================================

Validation must confirm:

- required asset families are resolved
- asset type is allowed for runtime family
- asset metadata is complete
- asset export format is runtime-compatible
- asset ownership/boundary is valid
- asset binding references are resolvable

Examples:
- RPG requires required enemy/quest/map-facing assets
- Strategy requires unit/building/map-facing assets
- Puzzle requires stage/icon/ui-facing assets
- VN requires scene/presentation/ui-facing assets

The following must be blocking:
- required asset family missing
- invalid asset format for runtime family
- unresolved asset binding
- prohibited Persona overlap
- missing export-critical asset metadata


# ============================================================
# 8. PERSONA BOUNDARY VALIDATION RULE
# ============================================================

Persona truth belongs to PersonaOS.

Runtime validation must ensure that GameOS Builder
and runtime families do not misuse Persona truth.

Allowed:
- approved projection references
- approved dialogue style shaping
- approved presentation shaping
- approved cast bindings

Prohibited:
- direct Persona truth mutation
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation
- treating generic game assets as Persona truth

The following must be blocking:
- Builder asset layer attempting to register
  generic enemy/unit/building material as Persona truth
- runtime logic depending on prohibited Persona internals
- export package containing prohibited Persona authority assumptions


# ============================================================
# 9. PREVIEW VALIDATION RULE
# ============================================================

Preview must remain sandboxed.

Validation must confirm that preview mode cannot:

- mutate production ranking truth
- mutate production achievement truth
- mutate production entitlement truth
- mutate production commerce truth
- mutate production Persona growth truth

The following must be blocking:
- preview path bound to production commerce endpoints
- preview path bound to production entitlement mutation
- preview path bound to production ranking finalization
- preview path bound to production Persona mutation


# ============================================================
# 10. EXPORT VALIDATION RULE
# ============================================================

Export validation must guarantee that the export package is:

- runtime-unambiguous
- ruleset-resolved
- template-compatible
- asset-complete
- metadata-complete
- preview-safe
- sync-compatible

An export package must freeze:
- runtime family
- ruleset profile
- required asset family set
- compatibility profile
- export hash basis

Export must be blocked when:
- export is based only on autosave state
- official saved revision is missing
- blocking issues remain
- runtime metadata is incomplete
- export package lineage is invalid


# ============================================================
# 11. SYNC-FACING VALIDATION RULE
# ============================================================

Runtime validation must declare what outputs are allowed
to become sync candidates.

Possible candidate categories:
- save snapshot candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate
- scenario completion candidate
- quest completion candidate
- stage completion candidate
- victory/defeat candidate

Validation must ensure:
- candidates are explicitly declared
- candidates are not treated as final truth
- client-side submissions remain untrusted
- sync adjudication remains required

The following must be blocking:
- runtime declaring client-side finality for ranking
- runtime declaring client-side finality for achievement
- runtime declaring client-side finality for entitlement
- runtime declaring client-side finality for commerce


# ============================================================
# 12. PUBLISH VALIDATION RULE
# ============================================================

Publish validation must guarantee platform safety.

Validation must confirm:
- seller linkage exists
- title linkage exists
- release linkage exists
- runtime metadata is complete
- moderation-facing metadata is complete
- compatibility metadata is complete
- store-facing metadata is sufficiently resolved

Submission or publish must be blocked when:
- release is unresolved
- moderation-critical metadata is missing
- runtime family is unresolved
- publish activation depends on failed validation
- required rollout approval assumptions are missing


# ============================================================
# 13. FAMILY-SPECIFIC VALIDATION GUIDANCE
# ============================================================

## 13.1 VN / DATING

Must validate:
- scene graph continuity
- branch target validity
- affection and relationship state validity
- ending resolution determinism
- route structure integrity

## 13.2 RPG

Must validate:
- area graph continuity
- quest chain integrity
- battle preset validity
- inventory/reward rule consistency
- shop and progression rule integrity

## 13.3 PUZZLE

Must validate:
- stage sequence continuity
- clear/fail rule integrity
- score formula determinism
- retry configuration integrity
- ranking candidate validity

## 13.4 STRATEGY

Must validate:
- map continuity
- turn lifecycle integrity
- unit action boundary validity
- resource/building rule integrity
- victory/defeat determinism


# ============================================================
# 14. VALIDATION OUTPUT RULE
# ============================================================

Validation output must always include:

- validation_stage
- runtime_family
- ruleset_profile_code
- finding_id
- severity
- affected_scope
- affected_ref
- summary
- fix_hint where possible

Validation output must remain machine-readable
and human-readable.

Builder UI must be able to:
- show severity grouping
- jump to offending block/asset
- show blocking count
- show warning count
- show last validation timestamp


# ============================================================
# 15. FINAL POLICY RULE
# ============================================================

Runtime validation is a mandatory GameOS safety layer.

It is the formal gate between:
- authoring
- export
- submission
- publish

Core summary:

- editing validation improves authoring safety
- export validation guarantees package integrity
- publish validation guarantees platform safety
- runtime ambiguity is prohibited
- Persona misuse is prohibited
- unresolved required assets are prohibited
- client-side final truth claims are prohibited
