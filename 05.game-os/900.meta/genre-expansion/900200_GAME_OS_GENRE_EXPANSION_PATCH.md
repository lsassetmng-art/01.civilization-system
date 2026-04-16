# ============================================================
# GAME OS GENRE EXPANSION PATCH
# Action / Adventure / 2D Fighting / Survival Action
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: meta
domain: genre-expansion
document_type: additive-patch
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This patch records the formal decision to expand the supported GameOS genre set.

Added genre families:
- Action Game
- Adventure Game
- 2D Fighting Game

Action subfamily clarification:
- Side-Scrolling Action
- Survival Action

Survival Action is not limited to horror.

# ============================================================
# 1. FINAL FORMAL GENRE DEFINITION
# ============================================================

GameOS officially supports the following genre families:

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

Adventure Game includes:
- exploration-heavy progression
- story-driven progression
- investigation-assisted progression

2D Fighting Game is treated as a rivalry-heavy Persona-capable battle genre.

Survival Action is not limited to horror and may include broader survival-oriented gameplay.

# ============================================================
# 2. GENRE INTERPRETATION
# ============================================================

## Action Game

Action Game includes at least the following formal subfamilies:

- Side-Scrolling Action
- Survival Action

### Side-Scrolling Action
Expected characteristics:
- side-scrolling stage progression
- movement and obstacle skill emphasis
- enemy and trap pacing
- stage-based support interaction

### Survival Action
Expected characteristics:
- resource pressure
- danger awareness
- exploration under survival constraints
- escape / endurance / survival judgment
- support / rescue significance
- repeated survival cooperation

Survival Action may include:
- horror survival
- non-horror survival
- post-disaster survival
- isolation survival
- environmental survival
- escape-oriented survival action

## Adventure Game

Adventure Game is treated as a story-capable, exploration-capable genre family.

Expected characteristics:
- exploration-heavy progression
- story-driven progression
- investigation-assisted progression
- clue discovery
- route and scene progression
- repeated character contact through discovery

## 2D Fighting Game

2D Fighting Game is treated as a formal battle genre inside GameOS.

Expected characteristics:
- one-on-one combat
- round-based combat
- match-based combat
- repeated duel structure
- rivalry-heavy meaning
- battle-opponent Persona usage

# ============================================================
# 3. CONSTITUTIONAL IMPACT
# ============================================================

The following constitutional principles remain unchanged:

- player is the participation subject
- Persona usage is optional
- game truth, persona truth, and wallet truth are separated
- local game values must not directly overwrite canonical Persona truth
- gambling remains a high-control domain
- auditability and safety remain mandatory

The genre expansion changes supported runtime scope, but does not change the core
separation principles of GameOS.

# ============================================================
# 4. RUNTIME IMPACT
# ============================================================

The supported runtime families should now include:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime
- action game runtime
- adventure game runtime
- 2d fighting runtime

Action game runtime includes:
- side-scrolling action runtime
- survival action runtime

Adventure game runtime includes:
- exploration progression runtime
- investigation-assisted runtime
- story-linked traversal runtime

2D fighting runtime includes:
- round lifecycle
- match lifecycle
- recurring opponent handling
- rivalry-heavy opponent structures

# ============================================================
# 5. PERSONA INTEGRATION IMPACT
# ============================================================

The expanded genre set increases Persona usage coverage.

## Action Game Persona usage
Persona may be used for:
- player presentation
- ally / partner presentation
- enemy / boss presentation
- support communication
- rescue / survival significance

## Adventure Game Persona usage
Persona may be used for:
- guide characters
- witnesses
- investigation partners
- clue-linked characters
- story-driving companions

## 2D Fighting Game Persona usage
Persona may be used for:
- battle opponent identity
- recurring rival identity
- trainer / guide identity
- tournament host identity
- symbolic boss fighter identity

# ============================================================
# 6. NPC PERSONA IMPACT
# ============================================================

The expanded genre set requires additional NPC Persona role coverage.

Formal additional NPC role coverage includes:

## Action Game
- stage rival
- support caller
- boss opponent
- survival companion
- route guide

## Adventure Game
- witness
- guide
- investigation partner
- route trigger character
- story informant

## 2D Fighting Game
- rival fighter
- recurring opponent
- trainer
- tournament host
- symbolic boss fighter

# ============================================================
# 7. REFLECTION POLICY IMPACT
# ============================================================

## Action Game
Candidate-friendly meanings:
- repeated rescue significance
- repeated survival cooperation
- stable support under danger
- trust reinforced through survival pressure

Candidate-hostile meanings:
- temporary damage state
- temporary fear spike
- stage-only resource count
- one-scene panic state

## Adventure Game
Candidate-friendly meanings:
- repeated discovery-linked trust
- meaningful shared investigation memory
- long-term guide familiarity
- clue-linked turning-point memory

Candidate-hostile meanings:
- branch-only clue flags
- scene-only completion flags
- implementation-only discovery counters

## 2D Fighting Game
Candidate-friendly meanings:
- repeated duel rivalry
- stable respect-in-rivalry
- persistent hostility pattern
- symbolic defeat / victory memory significance
- opponent-specific reaction tendency

Candidate-hostile meanings:
- combo counters
- frame / tuning values
- one-round aggression spikes
- bracket implementation flags

# ============================================================
# 8. MODEL IMPACT
# ============================================================

The expanded genre set increases the importance of:

- survival-oriented support relation
- rescue memory markers
- investigation memory markers
- clue-linked familiarity
- repeated duel rivalry markers
- respect / hostility split for fighting games
- non-horror survival meaning support

No change is made to the core model separation rules:

- local state remains local truth
- relation remains distinct from state
- memory marker remains distinct from raw event log
- impact event remains distinct from reflection candidate
- candidate remains distinct from canonical acceptance

# ============================================================
# 9. REQUIRED FOLLOW-UP CHAPTERS
# ============================================================

This patch implies later updates to the following canonical areas:

- overview genre definition
- constitution genre scope wording
- runtime family definition
- Persona integration genre handling
- NPC Persona architecture genre handling
- reflection policy genre-specific criteria

# ============================================================
# 10. DECISION
# ============================================================

Decision fixed by this patch:

- Action Game is officially supported
- Adventure Game is officially supported
- 2D Fighting Game is officially supported
- Survival Action replaces any narrower survival-horror-only wording
- Survival Action is not limited to horror
