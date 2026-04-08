# ============================================================
# WORLD ACCESS BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow baseline for WORLD ACCESS BINDING.

# 2. SCOPE

World access binding governs who or what may access world-facing surfaces, access scope linkage, and controlled interaction rights.

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
- access_binding_id
- subject_id
- world_id
- access_scope
- permission_state
- lifecycle_state
- audit_state

# 7. VALIDATION VIEW

Validation must reject:
- missing binding identity
- missing subject or world linkage
- blocked binding usable from active route
- permission_state unresolved at publish time
- hidden inheritance of world rights

# 8. TRANSITION VIEW

Typical transitions:
- DRAFT -> REVIEW
- REVIEW -> ACTIVE
- ACTIVE -> BLOCKED
- BLOCKED -> ACTIVE
- ACTIVE -> RETIRED

Forbidden transitions:
- BLOCKED -> ACTIVE without review
- RETIRED binding reused without reissue path

# 9. DEPENDENCY VIEW

Primary dependencies:
- 010.world-core
- identity and policy systems
- route and UI consumers
- governance review surfaces

# 10. EXAMPLE SCENARIOS

Example A:
A reviewed access binding grants a subject entry into world-facing interfaces.

Example B:
A binding is blocked after governance detects unresolved permission ambiguity.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- active state
- revision history
- blocked or rejected decisions
- dependency linkage
- failure and suppression reasons

