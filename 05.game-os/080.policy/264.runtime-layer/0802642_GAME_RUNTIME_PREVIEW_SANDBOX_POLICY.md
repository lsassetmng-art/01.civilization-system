# ============================================================
# GAME RUNTIME PREVIEW SANDBOX POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official preview sandbox policy for GameOS Runtime Layer.

This policy applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines:
- what preview may execute
- what preview must never finalize
- how preview state is isolated
- how sandbox outputs are classified
- how Persona, ranking, achievement, commerce,
  entitlement, and sync boundaries are protected


# ============================================================
# 1. ROLE OF PREVIEW SANDBOX
# ============================================================

Preview sandbox exists to let creators test
runtime-authored game behavior safely.

Preview is not production execution truth.

Preview must allow:
- interactive trial execution
- structural flow confirmation
- asset confirmation
- rule confirmation
- branch/progression testing
- export-readiness confidence building

Preview must not:
- mutate production truth
- issue platform-final records
- bypass GameOS validation or adjudication
- mutate Persona truth

Core principle:

preview is executable simulation,
not authoritative platform execution


# ============================================================
# 2. PREVIEW EXECUTION CLASS
# ============================================================

All preview execution must be classified as:

- sandbox execution
- discardable execution
- non-authoritative execution
- mock-capable execution
- validation-supporting execution

Preview execution may resemble runtime execution,
but it must remain isolated from production truth.


# ============================================================
# 3. ALLOWED PREVIEW ACTIONS
# ============================================================

Preview may execute approved runtime behavior
inside the sandbox.

Allowed preview actions include:

- scene progression
- route progression preview
- dialogue execution
- affection/relationship preview mutation
- area traversal preview
- quest progression preview
- battle preset preview
- stage execution preview
- score calculation preview
- turn progression preview
- unit action preview
- building/resource progression preview
- reward preview
- save candidate preview
- ending/victory/defeat preview

Allowed does not imply production authority.

All allowed preview actions remain sandbox-local.


# ============================================================
# 4. PROHIBITED PREVIEW ACTIONS
# ============================================================

Preview must never directly perform production-final actions.

Prohibited preview actions include:

- final platform ranking mutation
- final platform achievement grant
- final platform commerce mutation
- final platform purchase truth mutation
- final platform entitlement issuance mutation
- final install/license mutation
- final seller/marketplace mutation
- final Persona truth mutation
- unrestricted trust/memory/growth mutation
- production sync acceptance/adjudication mutation

Any preview path attempting these is blocking.


# ============================================================
# 5. PREVIEW STATE ISOLATION RULE
# ============================================================

Preview state must be isolated from production state.

Preview must use one of the following isolation modes:

- in-memory sandbox state
- temporary persisted preview session state
- explicit preview candidate state
- mock projection state

Preview state must not silently merge into:
- accepted save continuity
- final ranking truth
- final achievement truth
- final commerce truth
- final Persona truth

Isolation is mandatory.


# ============================================================
# 6. PREVIEW PERSISTENCE CLASSES
# ============================================================

Preview-generated data must be classified as one of:

## 6.1 DISCARDED OUTPUT
Used only during temporary preview interaction.

## 6.2 PREVIEW SNAPSHOT
Retained temporarily for preview session continuity,
but not authoritative.

## 6.3 PREVIEW CANDIDATE
Represents what would be emitted in production,
but remains explicitly marked as preview-only.

## 6.4 PROHIBITED OUTPUT
Any output that would directly create production-final truth.

Preview may produce preview candidates.
Preview may not produce production-final outputs.


# ============================================================
# 7. MOCK MODE RULE
# ============================================================

Preview may use mock mode for platform-dependent behaviors.

Mock mode may be used for:

- ranking submission simulation
- achievement grant simulation
- reward visibility simulation
- commerce UI simulation
- entitlement presence simulation
- Persona projection simulation
- rollout/store metadata preview

Mock mode must be visibly marked as mock.

Mock mode must never call production-final mutation paths.


# ============================================================
# 8. PERSONA SANDBOX RULE
# ============================================================

Preview may consume approved Persona projections only.

Allowed in preview:
- presentation shaping preview
- dialogue tone preview
- reaction style preview
- cast projection preview

Prohibited in preview:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation
- unrestricted internal Persona state mutation

Persona truth remains external truth
even during preview.


# ============================================================
# 9. RANKING / ACHIEVEMENT SANDBOX RULE
# ============================================================

Preview may simulate:
- ranking candidate generation
- achievement candidate generation
- unlock visibility
- reward threshold visibility

Preview may not finalize:
- ranking table truth
- achievement grant truth

Preview output for ranking/achievement must be labeled:

- preview-only
- non-authoritative
- not submitted
or equivalent explicit classification


# ============================================================
# 10. COMMERCE / ENTITLEMENT SANDBOX RULE
# ============================================================

Preview may simulate:
- store entry visibility
- item availability visibility
- entitlement-dependent content path preview
- pricing display preview
- purchase flow UI preview

Preview may not finalize:
- purchase truth
- revenue truth
- entitlement issuance truth
- install license truth
- download grant truth

Any entitlement state used in preview must be:
- mocked
- sandbox-provided
- explicitly non-authoritative


# ============================================================
# 11. SAVE / SYNC SANDBOX RULE
# ============================================================

Preview may simulate:
- save candidate generation
- load candidate reconstruction
- sync candidate generation
- replay candidate generation
- telemetry candidate generation

Preview may not finalize:
- accepted save continuity
- sync adjudication truth
- replay acceptance truth
- telemetry platform-final truth

Preview-generated save/sync objects must remain:
- preview-only
- discardable
- non-authoritative


# ============================================================
# 12. FAMILY-SPECIFIC SANDBOX GUIDANCE
# ============================================================

## 12.1 VN / DATING
Preview may simulate:
- route choice
- affection changes
- ending qualification
- dialogue variants

Preview may not finalize:
- production relationship truth
- production Persona-affecting truth

## 12.2 RPG
Preview may simulate:
- quest completion path
- battle outcome path
- inventory/reward candidate flow
- save candidate generation

Preview may not finalize:
- accepted reward truth
- production progression truth without adjudicated path

## 12.3 PUZZLE
Preview may simulate:
- score generation
- clear/fail path
- retry path
- ranking candidate flow

Preview may not finalize:
- ranking truth
- reward final truth

## 12.4 STRATEGY
Preview may simulate:
- turn cycle
- unit actions
- resource/building changes
- victory/defeat path

Preview may not finalize:
- accepted strategic continuity truth
- ranking/completion final truth


# ============================================================
# 13. PREVIEW SESSION SAFETY RULE
# ============================================================

Every preview session must define:

- preview_session_id
- runtime_family
- project_code
- preview_mode
- mock_mode_flags
- discard_rule
- session_expiry_rule

A preview session must always be terminable
without production cleanup requirements.

Preview session expiry must not leave
production truth in partial state.


# ============================================================
# 14. VALIDATION REQUIREMENT
# ============================================================

Preview sandbox legality must be validated at:

- editing validation
- export validation
- publish validation

Validation must confirm:
- production mutation endpoints are not bound
- preview outputs are properly classified
- mock dependencies are explicit
- Persona boundary is respected
- commerce/entitlement boundary is respected
- sync acceptance is not bypassed

Illegal preview behavior must be blocking.


# ============================================================
# 15. EXPORT RELATION
# ============================================================

An export package must declare preview compatibility.

Export metadata must define:
- whether preview is supported
- which preview modes are allowed
- which mock modes are required
- which output classes are preview-only

A package must not be exportable if:
- preview sandbox definition is missing when required
- preview path can mutate production truth
- mock boundaries are unresolved


# ============================================================
# 16. FINAL POLICY RULE
# ============================================================

Preview sandbox is a mandatory GameOS safety boundary.

Core summary:

- preview is executable simulation
- preview is non-authoritative
- preview state is isolated
- preview may produce preview-only candidates
- preview may not finalize ranking, achievement, commerce,
  entitlement, sync acceptance, or Persona truth
- mock mode must be explicit
- illegal production binding is prohibited
