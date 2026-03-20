# ============================================================
# STORY STATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story


# ============================================================
# DEFINITION
# ============================================================

Story state defines player-specific progression and branching context
within Civilization OS.

Story state must be fully contained within Civilization domain
and must not depend on external systems such as ERP.


# ============================================================
# STATE COMPONENTS
# ============================================================

Story state consists of four strictly separated components:

- progress
- flags
- inventory
- decision_log


# ============================================================
# 1. PROGRESS
# ============================================================

definition:
Represents current position in the story.

fields:
- player_id
- story_id
- current_year
- current_chapter
- current_scene

rules:
- only one active progress per story
- must be updated explicitly
- must not include branching logic
- must not include flags or inventory data

responsibility:
- location tracking only


# ============================================================
# 2. FLAGS
# ============================================================

definition:
Boolean variables used for branching decisions.

example:
- met_king = true
- accepted_quest = true
- found_key = false

rules:
- flags must be boolean ONLY
- numeric or string values are prohibited
- flags must be explicitly set via effects
- flags must not be inferred implicitly

responsibility:
- branching conditions only


# ============================================================
# 3. INVENTORY
# ============================================================

definition:
List of items obtained within story context.

example:
- key_001
- letter_002

rules:
- story inventory is limited to story domain usage
- must not be used as branching substitute for flags
- must not include economic or financial assets
- must remain independent from other Civilization domains such as economy

clarification:
Story inventory is NOT related to ERP inventory systems.

responsibility:
- puzzle solving
- exploration rewards
- item-based interactions


# ============================================================
# 4. DECISION LOG
# ============================================================

definition:
Records all player decisions for replay and branching consistency.

fields:
- player_id
- scene_id
- choice_id
- timestamp

rules:
- must be append-only
- must not be modified or deleted
- must represent actual player choices only

responsibility:
- replay
- audit
- branching reconstruction


# ============================================================
# CONDITION EVALUATION
# ============================================================

definition:
Entry conditions must evaluate against flags and inventory only.

example:

{
  "all": [
    { "flag": "accepted_quest", "equals": true },
    { "has_item": "key_001" }
  ]
}

rules:
- must be deterministic
- must not depend on external systems
- must not include hidden logic


# ============================================================
# EFFECT SYSTEM
# ============================================================

definition:
All state changes must be applied via explicit effects.

supported_effects:
- flag_set
- item_grant
- unlock
- stat_change (future extension)

rules:
- effects must be explicit
- side effects are prohibited
- each effect must target a single state component


# ============================================================
# DOMAIN ISOLATION RULE
# ============================================================

Story state must be fully isolated within Civilization OS.

prohibited:
- dependency on ERP systems
- dependency on external business data
- shared state with financial or accounting systems

allowed:
- interaction with other Civilization domains via explicit events only

example:
- education domain (exam results)
- persona domain (character interaction)
- law domain (event triggers)


# ============================================================
# FINAL RULE
# ============================================================

Story state must be strictly separated into four components.

Mixing responsibilities is prohibited.

Story must remain deterministic, auditable, and fully data-driven.

