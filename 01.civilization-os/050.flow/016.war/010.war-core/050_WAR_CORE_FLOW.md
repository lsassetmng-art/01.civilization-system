# ============================================================
# WAR CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow baseline for WAR CORE.

# 2. SCOPE

War core governs war identity, participating scope visibility, high-level war-state continuity, and coordination across war-facing structures.

# 3. DESIGN INTENT

This structure exists to keep control, execution, and interpretation explicit.
It prevents hidden mutation and makes downstream trust, routing, and operations stable.

# 4. CORE RULES

- scope must be explicit
- control and responsibility boundaries must be explicit
- hidden mutation across layers is prohibited
- ambiguous or unverifiable state must fail closed

# 5. REQUIRED BEHAVIOR

The flow layer must preserve:
- identity continuity
- control continuity
- downstream compatibility
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- war_core_id
- participant_scope
- lifecycle_state
- active_state
- dependency_state
- audit_state

Recommended lifecycle_state values:
- DRAFT
- REVIEW
- ACTIVE
- SUSPENDED
- CLOSED

# 7. VALIDATION VIEW

Validation must reject:
- missing war identity
- missing participant scope
- ACTIVE war without reviewed governing scope
- hidden replacement of active war identity
- unresolved downstream compatibility

# 8. TRANSITION VIEW

Typical transitions:
- DRAFT -> REVIEW
- REVIEW -> ACTIVE
- ACTIVE -> SUSPENDED
- SUSPENDED -> ACTIVE
- ACTIVE -> CLOSED

Forbidden transitions:
- DRAFT -> ACTIVE without review
- CLOSED -> ACTIVE without explicit reissue path

# 9. DEPENDENCY VIEW

Primary dependencies:
- 020.war-front
- 030.unit-deployment
- 040.war-operation
- 050.war-logistics
- 060.ceasefire-resolution

# 10. EXAMPLE SCENARIOS

Example A:
A reviewed war structure is activated with explicit participant visibility.

Example B:
A war is suspended because key downstream structures are incompatible.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- active state
- revision history
- blocked or rejected decisions
- dependency linkage
- failure and suppression reasons

