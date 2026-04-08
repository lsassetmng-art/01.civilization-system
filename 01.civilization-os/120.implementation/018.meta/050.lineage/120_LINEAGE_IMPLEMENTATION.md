# ============================================================
# LINEAGE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical implementation baseline for lineage structures.

# 2. SCOPE

Lineage tracks where data, meaning, or structural artifacts came from,
how they were derived, and what upstream relations must remain visible.

# 3. DESIGN INTENT

If origin or derivation cannot be reconstructed,
the system must degrade safely rather than invent continuity.

# 4. RULES

- lineage scope must be explicit
- source references must be explicit
- lineage rules must remain auditable
- blocked lineage states must prevent unsafe derivation use

# 5. REQUIRED BEHAVIOR

The implementation layer must preserve:
- origin traceability
- derivation continuity
- upstream dependency visibility
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- lineage_id
- source_id
- derived_id
- derivation_type
- lineage_state
- dependency_state
- audit_state

Recommended lineage_state values:
- ACTIVE
- BLOCKED
- SUPERSEDED

# 7. VALIDATION VIEW

Validation must reject:
- missing source_id
- missing derived_id
- unknown derivation_type
- blocked lineage used for downstream decisions
- missing derivation audit trace

# 8. TRANSITION VIEW

Typical transitions:
- ACTIVE -> BLOCKED
- ACTIVE -> SUPERSEDED
- BLOCKED -> ACTIVE after review

Forbidden transitions:
- source replacement without continuity link
- derivation reuse after unresolved break

# 9. DEPENDENCY VIEW

Primary dependencies:
- source canonical assets
- dictionary and schema structures
- downstream compatibility checks
- provenance and approval surfaces

# 10. EXAMPLE SCENARIOS

Example A:
A canonical term is promoted from an extracted dictionary candidate with explicit source linkage.

Example B:
A lineage chain is blocked because the original source registry entry was withdrawn.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- upstream source map
- derivation history
- blocked lineage reasons
- continuity break detection

