# ============================================================
# GAME TO PERSONA REFLECTION FLOW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: flow
domain: persona-reflection
document_type: flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow describes how GameOS gameplay may eventually influence PersonaOS
through safe, auditable proposal-based reflection.

# ============================================================
# 2. FLOW STEPS
# ============================================================

1. gameplay interaction occurs
2. game Persona state updates
3. relation state updates
4. memory markers are extracted
5. persona impact events are generated
6. reflection candidates are generated
7. candidates are dispatched
8. decisions are recorded
9. sync results are recorded

# ============================================================
# 3. FLOW RULES
# ============================================================

- direct overwrite is forbidden
- only transformed, meaningful values may become candidates
- title-local raw values must not cross the boundary
- decision and sync must remain separate
- audit lineage must survive the full chain

# ============================================================
# 4. CONCLUSION
# ============================================================

This flow preserves strong separation between gameplay-local richness and
PersonaOS canonical safety.
