# ============================================================
# CLASSIFICATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical integration baseline for classification structures.

# 2. SCOPE

Classification establishes controlled placement of entities
into formal semantic, policy, governance, or operational classes.

# 3. DESIGN INTENT

Classification has governance impact and must remain explicit, reviewable, and deterministic.

# 4. RULES

- classification scope must be explicit
- target and rule binding must be explicit
- revised classification state must preserve classification identity
- implicit reclassification is prohibited

# 5. REQUIRED BEHAVIOR

The integration layer must preserve:
- classification determinism
- target traceability
- governance compatibility
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- classification_id
- target_id
- class_family
- class_value
- rule_id
- lifecycle_state
- approval_state

Recommended lifecycle_state values:
- DRAFT
- REVIEW
- ACTIVE
- SUPERSEDED
- BLOCKED

# 7. VALIDATION VIEW

Validation must reject:
- missing target_id
- missing class_family or class_value
- missing governing rule
- conflicting simultaneous active classifications when prohibited
- reclassification without traceable prior state

# 8. TRANSITION VIEW

Typical transitions:
- DRAFT -> REVIEW
- REVIEW -> ACTIVE
- ACTIVE -> SUPERSEDED
- ACTIVE -> BLOCKED

Forbidden transitions:
- BLOCKED -> ACTIVE without explicit review
- ACTIVE replacement without prior-state linkage

# 9. DEPENDENCY VIEW

Primary dependencies:
- policy structures
- routing and reporting consumers
- dictionary families
- target canonical model

# 10. EXAMPLE SCENARIOS

Example A:
A facility is assigned to a formal institution class after governance review.

Example B:
A prior class is superseded after a revised national policy taxonomy is adopted.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- current class assignment
- governing rule linkage
- prior class history
- rejection or suspension reasons

