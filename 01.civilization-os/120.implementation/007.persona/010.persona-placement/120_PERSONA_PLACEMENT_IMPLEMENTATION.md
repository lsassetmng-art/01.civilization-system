# ============================================================
# PERSONA PLACEMENT
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the implementation design for Civilization-side persona placement.

# 2. IMPLEMENTATION TARGETS

- placement-state handling
- target-scope validation
- conflict detection
- placement publication
- placement audit

# 3. DATA / STATE

Canonical structures:
- persona_placement
- placement_scope
- placement_status
- placement_constraint

# 4. EXECUTION

- resolve explicit target scope
- validate placement constraints
- reject incompatible overlap before persistence
- publish only validated placement state

# 5. VALIDATION

- reject missing target scope
- reject incompatible overlap
- reject invalid constraint binding

# 6. OBSERVABILITY

- placement audit
- conflict audit
- scope visibility

