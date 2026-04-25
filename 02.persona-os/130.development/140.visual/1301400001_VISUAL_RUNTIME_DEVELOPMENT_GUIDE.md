# ============================================================
# VISUAL RUNTIME DEVELOPMENT GUIDE
# ============================================================

status: canonical
layer: development
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. DEVELOPMENT PURPOSE
# ============================================================

This guide defines how future development
must extend Visual Runtime safely.


# ============================================================
# 2. DEVELOPMENT PRIORITIES
# ============================================================

Priority 1:
keep host-facing public interface stable

Priority 2:
improve fallback determinism

Priority 3:
improve surface portability

Priority 4:
improve observability and testability


# ============================================================
# 3. REQUIRED TEST AREAS
# ============================================================

1. session lifecycle tests
2. surface contract validation tests
3. background priority tests
4. fallback behavior tests
5. host disposal leak tests
6. recoverable vs terminal error tests


# ============================================================
# 4. CHANGE RULES
# ============================================================

New features must not:

break canonical public event codes
remove explicit disposal semantics
hide fallback behavior
mix builder logic into runtime execution

New features should:

extend surface coverage
improve host clarity
reduce host-side ambiguity
preserve deterministic behavior


# ============================================================
# 5. POCKETSECRETARY IMPACT RULE
# ============================================================

Any change to host-facing runtime behavior
must be evaluated from the PocketSecretary host perspective first.

Question to validate:

Can a compliant host understand
what to pass in,
what comes out,
what fails,
and how fallback behaves
without reading runtime internals?

# EXACT READY DEVELOPMENT REINFORCEMENT

status_extension: author-reviewed-with-development-reinforcement
reinforced_at: 20260417_150811
reinforcement_scope:
- implementation order clarification
- acceptance target clarification
- guardrail clarification
- rollback or recovery clarification where applicable

domain: generic

minimum_development_requirements:
- define recommended implementation sequence
- define dependencies that must be fixed before coding
- define minimum acceptance checks
- define regression-sensitive areas
- define audit and observability checks where applicable

mandatory_guardrails:
- no coding before contract boundary is explicit
- no mutable side-effect without audit evidence
- no retry path without stop condition
- no release-sensitive path without gate verification
- no test completion claim without reject-path checks

minimum_acceptance_targets:
- success path proof
- reject or block path proof
- persistence effect proof where applicable
- audit evidence proof
- retry or recovery proof where applicable

development_ready_note:
This reinforcement does not replace the authored development content above.
It marks the minimum exact-ready development items that must be explicit
before implementation planning is considered complete.
