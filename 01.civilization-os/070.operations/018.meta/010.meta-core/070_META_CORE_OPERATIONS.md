# ============================================================
# META CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical operations baseline for the meta core of Civilization OS.

# 2. SCOPE

The meta core governs:
- meta identity
- meta structural ownership
- meta lifecycle binding
- version and publication coordination
- compatibility with downstream meta consumers

# 3. DESIGN INTENT

Meta is not only descriptive support data.
It is a governing layer that stabilizes meaning,
interpretation, linkage, and cross-domain reuse.

# 4. CORE RULES

- every meta structure must belong to an explicit meta scope
- every publication state must be traceable to an explicit version state
- implicit meta inheritance is prohibited unless declared by canonical rule
- hidden mutation across layer boundaries is prohibited

# 5. REQUIRED OUTPUT

The operations layer must preserve:
- meta identity
- scope continuity
- version continuity
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- meta_id
- meta_scope
- meta_owner
- meta_version
- publication_state
- compatibility_state
- audit_state

Recommended publication_state values:
- DRAFT
- REVIEW
- ACTIVE
- SUSPENDED
- RETIRED

# 7. VALIDATION VIEW

Validation must reject:
- missing meta_id
- missing meta_scope
- missing active version when publication_state=ACTIVE
- owner or governance ambiguity
- unresolved compatibility_state at publish time

# 8. TRANSITION VIEW

Typical transitions:
- DRAFT -> REVIEW
- REVIEW -> ACTIVE
- ACTIVE -> SUSPENDED
- SUSPENDED -> ACTIVE
- ACTIVE -> RETIRED

Forbidden transitions:
- DRAFT -> ACTIVE without review
- RETIRED -> ACTIVE without explicit reissue path

# 9. DEPENDENCY VIEW

Primary dependencies:
- 040.registry
- 050.domain
- 070.subdomain
- 120.schema
- downstream dictionary families

Downstream consumers:
- classification
- annotation
- tagging
- lineage
- provenance

# 10. EXAMPLE SCENARIOS

Example A:
A new canonical meta family is created, reviewed, and activated with explicit scope and version.

Example B:
A previously active meta family is suspended because downstream compatibility cannot be verified.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- active meta version
- publication history
- compatibility decision trace
- rejection or suspension reason

