# ============================================================
# GAME OS NPC PERSONA ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
domain: npc-persona
document_type: architecture
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This architecture defines how NPCs use Persona in GameOS without collapsing
game character truth into PersonaOS canonical truth.

# ============================================================
# 2. NPC PERSONA TYPES
# ============================================================

GameOS supports:
- display NPC Persona
- interactive NPC Persona
- persistent NPC Persona
- bound canonical NPC Persona

# ============================================================
# 3. ROLE TYPES
# ============================================================

NPC Persona may appear as:
- romance target
- battle opponent
- rival
- companion
- navigator
- merchant / receptionist
- quest giver
- world resident
- gambling dealer / host

# ============================================================
# 4. LINKAGE DEPTH
# ============================================================

NPC Persona linkage depth may be:
- display-only
- interactive
- relation-capable
- persistent
- canonical-linked

The deeper the linkage, the stronger the audit and reflection requirements.

# ============================================================
# 5. TITLE-LOCAL VS CANONICAL
# ============================================================

GameOS must distinguish:
- title-local NPC usage
- cross-title continuity candidates
- template-based Persona usage
- soft canonical linkage
- hard canonical linkage

Title-local route or battle values must never directly become canonical Persona truth.

# ============================================================
# 6. RELATION AND MEMORY
# ============================================================

NPC Persona may participate in:
- romance relations
- rivalry relations
- support relations
- familiarity relations
- memory marker generation
- impact extraction

This enables NPCs to behave like meaningful ongoing characters rather than static labels.

# ============================================================
# 7. REFLECTION PRINCIPLE
# ============================================================

NPC Persona changes may become reflection candidates only after:
- state summarization
- relation interpretation
- memory significance marking
- impact extraction
- transformed proposal generation

# ============================================================
# 8. CONCLUSION
# ============================================================

NPC Persona architecture lets GameOS build deep relationship gameplay while
keeping canonical Persona protection intact.
