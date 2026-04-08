# ============================================================
# ANNOTATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical operations baseline for annotation structures.

# 2. SCOPE

Annotation provides human-readable or system-readable
interpretive labels attached to canonical objects.

# 3. DESIGN INTENT

Annotation supplements meaning without silently replacing canonical truth.

# 4. RULES

- annotation target must be explicit
- annotation scope must be explicit
- annotation rule must not override canonical source truth implicitly
- revised annotation states must remain traceable

# 5. REQUIRED BEHAVIOR

The operations layer must preserve:
- target linkage
- annotation meaning continuity
- revision traceability
- audit visibility

# 6. STATE MODEL

Minimum state surfaces:
- annotation_id
- target_id
- annotation_scope
- annotation_text_or_payload
- revision_state
- approval_state
- visibility_state

Recommended revision_state values:
- DRAFT
- REVIEW
- ACTIVE
- SUPERSEDED
- WITHDRAWN

# 7. VALIDATION VIEW

Validation must reject:
- missing target_id
- missing annotation_scope
- annotation text that conflicts with canonical source meaning
- missing revision trace on update
- publication without owner or approver visibility where required

# 8. TRANSITION VIEW

Typical transitions:
- DRAFT -> REVIEW
- REVIEW -> ACTIVE
- ACTIVE -> SUPERSEDED
- ACTIVE -> WITHDRAWN

Forbidden transitions:
- WITHDRAWN -> ACTIVE without explicit reissue path
- SUPERSEDED replacement without link to prior annotation

# 9. DEPENDENCY VIEW

Primary dependencies:
- target canonical model
- 040.registry
- 120.schema where annotation payload is structured
- UI consumers of annotation display

# 10. EXAMPLE SCENARIOS

Example A:
A clarification label is added to a canonical facility term and approved for display.

Example B:
An outdated explanatory note is superseded after canonical wording changes.

# 11. OBSERVABILITY

At minimum, the layer should expose:
- target-to-annotation linkage
- revision history
- source and approver traceability
- rejection or withdrawal reason

