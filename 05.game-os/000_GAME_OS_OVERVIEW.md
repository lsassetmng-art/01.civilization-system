# ============================================================
# GAME OS OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: root
document_type: overview
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FORMAL PURPOSE
# ============================================================

GameOS is the official game platform inside Civilization.
It supports multiple genres, multiple titles, Persona-enabled gameplay,
NPC Persona usage, game-to-Persona meaning reflection, and
high-control gambling experiences using national currency.

# ============================================================
# 2. OFFICIAL GENRE FAMILIES
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
# 3. CORE PRINCIPLES
# ============================================================

- player is the participation subject
- Persona usage is optional
- NPCs may use Persona
- game truth and persona truth are separated
- local game state and canonical Persona state are separated
- gambling using national currency is a high-control domain
- auditability and safety are mandatory
- multilingual support is a formal design premise
- multi-currency support is a formal design premise
- multi-device support is a formal design premise

# ============================================================
# 4. MULTILINGUAL / MULTI-CURRENCY / MULTI-DEVICE PREMISE
# ============================================================

GameOS is formally designed with multilingual support, multi-currency support,
and multi-device support as first-class design premises.

Multilingual support applies to:
- UI text
- explanations
- notifications
- display labels
- user-facing messages
- report and document display text

Multi-currency support applies to:
- prices
- wager-related monetary display
- billing-like values if applicable
- settlement-related values
- aggregate monetary display
- converted user-facing monetary display

Multi-device support applies to:
- iPhone
- Android
- PC
- tablet devices

GameOS must avoid hard-wiring:
- a single language
- a single currency structure
- a single device form factor

# ============================================================
# 5. MAJOR DOMAINS
# ============================================================

- constitution
- persona integration architecture
- npc persona architecture
- gambling runtime architecture
- player models
- persona state / relation / reflection models
- gambling wager / eligibility / outcome / settlement models
- reflection policy
- national currency wager policy
