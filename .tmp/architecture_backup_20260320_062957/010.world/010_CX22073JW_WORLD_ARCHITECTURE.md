# ============================================================
# CX22073JW WORLD ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: world

# ============================================================
# DEFINITION
# ============================================================

cx22073jw is the canonical world data system.

It represents the single source of truth
for all world-related information.

# ============================================================
# CORE STRUCTURE
# ============================================================

world consists of:

- timeline
- entities
- events
- locations
- knowledge

# ============================================================
# TIMELINE
# ============================================================

definition:
Linear time structure of the world.

fields:
- year
- era
- phase

rules:
- time must be continuous
- events must be assigned to timeline

# ============================================================
# ENTITIES
# ============================================================

definition:
All existing objects within the world.

types:
- person
- organization
- concept

fields:
- entity_id
- type
- name

# ============================================================
# EVENTS
# ============================================================

definition:
Occurrences within the timeline.

fields:
- event_id
- year
- description
- related_entities

rules:
- events must be immutable
- events define world progression

# ============================================================
# LOCATIONS
# ============================================================

definition:
Spatial representation of the world.

fields:
- location_id
- name
- type

# ============================================================
# KNOWLEDGE
# ============================================================

definition:
Descriptive and interpretative information.

fields:
- knowledge_id
- content
- related_events

# ============================================================
# RULES
# ============================================================

- cx22073jw is the single source of truth
- world data must not be modified dynamically
- data may be appended but not altered
- all references must point to this system

# ============================================================
# STORY RELATION
# ============================================================

Story must not own world data.

Story may reference world data via Aerial.

# ============================================================
# FINAL RULE
# ============================================================

cx22073jw defines reality.
All systems must align with it.

