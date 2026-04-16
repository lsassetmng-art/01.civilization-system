# ============================================================
# GAME OS PERSONA INTEGRATION ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
domain: persona-integration
document_type: architecture
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This architecture defines how GameOS uses Persona without making Persona mandatory.
GameOS accepts normal human players, Persona-bound players, hybrid players,
and NPCs that optionally use Persona.

# ============================================================
# 2. CORE STRUCTURE
# ============================================================

GameOS Persona integration is organized into:
- player side Persona usage
- NPC side Persona usage
- game-local Persona state
- relation and memory structures
- impact extraction
- reflection boundary to PersonaOS

# ============================================================
# 3. BOUNDARY PRINCIPLES
# ============================================================

- player is the participation subject
- Persona is optional
- NPCs may use Persona
- game-local Persona state is not PersonaOS canonical state
- GameOS must never directly overwrite PersonaOS canonical truth
- reflection must be event-driven and auditable

# ============================================================
# 4. PLAYER SIDE
# ============================================================

Player-side Persona usage supports:
- visual presentation
- conversation style
- optional gameplay identity expression
- title-scoped Persona usage
- session-scoped Persona usage

However, result ownership, participation truth, ranking ownership,
and gambling ownership remain on player.

# ============================================================
# 5. NPC SIDE
# ============================================================

NPC-side Persona usage supports:
- romance targets
- battle opponents
- rivals
- companions
- navigators
- service characters

NPC Persona depth may vary from display-only to canonical-linked.

# ============================================================
# 6. LOCAL TRUTH
# ============================================================

GameOS may store:
- affection, trust, rivalry, support affinity
- local memory markers
- title-local relation summaries
- route-adjacent values
- battle tendency summaries

These are local truth and must remain separate from PersonaOS canonical truth.

# ============================================================
# 7. REFLECTION BOUNDARY
# ============================================================

The reflection path is:

- gameplay interaction
- local state update
- relation / memory marker update
- impact extraction
- reflection candidate generation
- decision and sync tracking

Only transformed, meaningful, continuous values may cross the boundary.

# ============================================================
# 8. CONCLUSION
# ============================================================

This architecture allows GameOS to offer rich Persona-enabled gameplay while
preserving strong separation between gameplay truth and Persona canonical truth.
