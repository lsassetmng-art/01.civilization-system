# ============================================================
# PROVENANCE
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical integration baseline for provenance structures.

# 2. SCOPE

Provenance tracks who or what produced, approved,
modified, published, or transferred responsibility for a meta artifact.

# 3. DESIGN INTENT

Without provenance, governance and trust collapse,
so provenance ambiguity must fail closed.

# 4. RULES

- provenance scope must be explicit
- actor references must be explicit
- provenance rules must preserve accountability continuity
- blocked provenance state must prevent unauthorized provenance use

# 5. REQUIRED BEHAVIOR

The integration layer must preserve:
- actor traceability
- responsibility continuity
- approval visibility
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- provenance_id
- actor_id
- action_type
- target_id
- approval_id
- responsibility_state
- audit_state

Recommended responsibility_state values:
- DECLARED
- APPROVED
- DELEGATED
- WITHDRAWN
- BLOCKED

# 7. VALIDATION VIEW

Validation must reject:
- missing actor_id
- missing target linkage
- missing approval linkage where required
- ambiguous delegation path
- blocked provenance state used for trust decisions

# 8. TRANSITION VIEW

Typical transitions:
- DECLARED -> APPROVED
- APPROVED -> DELEGATED
- APPROVED -> WITHDRAWN
- BLOCKED -> APPROVED after review

Forbidden transitions:
- delegation without prior accountable actor
- approval without traceable source action

# 9. DEPENDENCY VIEW

Primary dependencies:
- identity and actor resolution
- governance approvals
- lineage and publication states
- downstream trust-sensitive consumers

# 10. EXAMPLE SCENARIOS

Example A:
A governance actor approves a new canonical meta publication and provenance records the action.

Example B:
Responsibility for a dictionary family is delegated to a new maintainer with explicit trace.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- actor and action history
- approval chain visibility
- delegation history
- accountability gaps
- rejection or block reasons

