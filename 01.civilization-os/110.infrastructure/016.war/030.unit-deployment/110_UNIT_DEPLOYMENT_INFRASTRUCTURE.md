# ============================================================
# UNIT DEPLOYMENT
# INFRASTRUCTURE
# ============================================================

status: draft
layer: infrastructure
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical infrastructure baseline for UNIT DEPLOYMENT.

# 2. SCOPE

Unit deployment governs deployment identity, unit placement visibility, deployment constraints, and controlled continuity of deployed war assets.

# 3. DESIGN INTENT

This structure exists to keep control, execution, and interpretation explicit.
It prevents hidden mutation and makes downstream trust, routing, and operations stable.

# 4. CORE RULES

- scope must be explicit
- control and responsibility boundaries must be explicit
- hidden mutation across layers is prohibited
- ambiguous or unverifiable state must fail closed

# 5. REQUIRED BEHAVIOR

The infrastructure layer must preserve:
- identity continuity
- control continuity
- downstream compatibility
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- unit_deployment_id
- unit_id
- front_id
- deployment_state
- constraint_state
- lifecycle_state
- audit_state

# 7. VALIDATION VIEW

Validation must reject:
- missing deployment identity
- missing unit or front linkage
- blocked deployment still treated as active
- constraint violation without explicit handling
- unresolved dependency on logistics or operations

# 8. TRANSITION VIEW

Typical transitions:
- DRAFT -> REVIEW
- REVIEW -> ACTIVE
- ACTIVE -> REDEPLOYING
- ACTIVE -> BLOCKED
- REDEPLOYING -> ACTIVE

Forbidden transitions:
- ACTIVE without reviewed front linkage
- redeployment without traceable prior position

# 9. DEPENDENCY VIEW

Primary dependencies:
- war front
- war logistics
- war operations
- observability and reporting consumers

# 10. EXAMPLE SCENARIOS

Example A:
A reviewed unit is deployed to an active front with explicit constraint visibility.

Example B:
A deployment is blocked because logistics support is unavailable.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- active state
- revision history
- blocked or rejected decisions
- dependency linkage
- failure and suppression reasons

