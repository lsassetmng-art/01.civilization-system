# ============================================================
# GAME OS PERSONA ENABLED RUNTIME OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: runtime
domain: persona-enabled-runtime
document_type: overview
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime family covers gameplay where Persona is optionally used by players
or NPCs.

# ============================================================
# 2. SUPPORTED GENRE COVERAGE
# ============================================================

Persona-enabled runtime may operate across:

- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

Action Game includes:
- Side-Scrolling Action
- Survival Action

Survival Action is not limited to horror.

# ============================================================
# 3. SUPPORTED USES
# ============================================================

- player visual expression
- player conversation expression
- NPC romance targets
- NPC battle opponents
- NPC companions
- navigators and service characters
- survival companions
- investigation partners
- recurring rivals
- symbolic boss opponents

# ============================================================
# 4. RUNTIME PRINCIPLES
# ============================================================

- player remains the participation subject
- Persona usage is optional
- runtime uses game-local Persona state
- runtime must not treat local state as canonical Persona truth
- reflection is handled through later model/flow layers

# ============================================================
# 5. MAJOR RUNTIME INPUTS
# ============================================================

- player
- player profile
- Persona character binding
- game Persona state
- game Persona relation
- memory markers
- title-specific runtime rules

# ============================================================
# 6. MAJOR RUNTIME OUTPUTS
# ============================================================

- gameplay state transitions
- relation updates
- memory marker creation
- impact event extraction inputs
- reflection flow inputs

# ============================================================
# 7. GENRE-SPECIFIC EMPHASIS
# ============================================================

Action Game emphasizes:
- stage progression
- support under pressure
- rescue significance
- survival cooperation

Adventure Game emphasizes:
- exploration progression
- investigation progression
- clue-linked memory
- familiarity through repeated discovery

2D Fighting Game emphasizes:
- repeated duel rivalry
- respect / hostility split
- recurring opponent handling
- battle-opponent Persona usage

# ============================================================
# 8. CONCLUSION
# ============================================================

Persona-enabled runtime is the execution layer for optional Persona-based
gameplay without collapsing the separation between GameOS and PersonaOS.
