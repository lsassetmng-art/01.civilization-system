# ============================================================
# CIVILIZATION SYSTEM FOLDER STRUCTURE
# ============================================================

status: canonical
layer: architecture
component: civilization-system-structure

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical folder structure of the Civilization System.


# ============================================================
# ROOT STRUCTURE
# ============================================================

01.civilization-system

CIVILIZATION_COMPLETE_BIBLE.md
CIVILIZATION_INDEX.md
CIVILIZATION_SYSTEM_FOLDER_STRUCTURE_CANONICAL.md
CIVILIZATION_DESIGN_RULES.md

00.charter

01.civilization-os
02.persona-os
03.business-os
04.life-os
05.game-os
06.streaming-os


# ============================================================
# CHARTER
# ============================================================

00.charter

Civilization philosophical layer.

Examples:

CIVILIZATION_CHARTER.md
CIVILIZATION_MYTHOLOGY.md
CIVILIZATION_PRINCIPLES.md


# ============================================================
# OS STRUCTURE
# ============================================================

Each OS follows the same structure.


10.constitution
20.architecture
30.runtime
40.implementation
50.operations
60.development
90.meta


# ============================================================
# CIVILIZATION OS
# ============================================================

01.civilization-os

Core kernel of the civilization system.

Responsibilities:

global rules
system governance
event pipeline
world orchestration
security enforcement


# ============================================================
# PERSONA OS
# ============================================================

02.persona-os

Persona identity and character system.

Responsibilities:

persona identity
persona state
persona growth
persona snapshot
visual persona


# ============================================================
# BUSINESS OS
# ============================================================

03.business-os

Economic system of the civilization.

Responsibilities:

enterprise activity
market economy
contracts
transactions


# ============================================================
# LIFE OS
# ============================================================

04.life-os

Human life system.

Responsibilities:

health
activity
sleep
meal
lifestyle


# ============================================================
# GAME OS
# ============================================================

05.game-os

Game world system.


# ============================================================
# STREAMING OS
# ============================================================

06.streaming-os

Creator and streaming ecosystem.


# ============================================================
# DEPENDENCY MODEL
# ============================================================

CivilizationOS acts as the kernel.

CivilizationOS
   ↓
PersonaOS
BusinessOS
LifeOS
GameOS
StreamingOS


# ============================================================
# RULES
# ============================================================

OS modules must not mutate other OS state directly.

Cross-OS interaction must occur via events.


