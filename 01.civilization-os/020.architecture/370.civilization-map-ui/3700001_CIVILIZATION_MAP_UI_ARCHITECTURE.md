# ============================================================
# CIVILIZATION MAP UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: civilization-map-ui
component: civilization-map-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical map UI architecture
for Civilization.

This architecture defines:

- map layer hierarchy
- menu allocation by layer
- builder entry points
- facility interaction rules
- multi-tenant building routing
- transition logic between world, nation, and field levels


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization map UI must separate
different abstraction levels.

The user must not edit
world-scale, nation-scale,
and field-scale objects
from the same visual layer
without explicit transition.


# ============================================================
# 3. MAP LAYERS
# ============================================================

Civilization map UI consists of:

- Civilization Global Map
- Civilization Continent Map
- Civilization Field Map

Their roles are:

Civilization Global Map
- globe-like civilization overview
- continent selection
- global condition viewing

Civilization Continent Map
- continent-level nation viewing
- nation selection
- nation builder entry

Civilization Field Map
- local field and district viewing
- object-level interaction
- company, housing, facility, and construction entry


# ============================================================
# 4. INTERACTION PRINCIPLE
# ============================================================

Map interactions must distinguish between:

- select
- use
- build
- edit
- manage

Normal tap must prioritize user-facing use.
Management and builder actions must remain
clearly separated from ordinary use.


# ============================================================
# 5. FACILITY PRINCIPLE
# ============================================================

Single-function facilities:
- tap opens service directly

Multi-tenant buildings:
- tap opens tenant list
- tenant selection opens tenant-specific service

Editable creator-owned objects:
- tap opens normal use or overview
- explicit manage path opens builder or editor


# ============================================================
# 6. GRID PRINCIPLE
# ============================================================

Map editing must be grid-legible.

Continent map uses:
- nation grid

Field map uses:
- build and placement grid

Empty grid:
- used for creation and placement

Occupied grid:
- used for use, overview, or management


# ============================================================
# 7. FINAL RULE
# ============================================================

Civilization map UI must keep
viewing, using, and building
structurally separated
while remaining easy to understand.
