# ============================================================
# WORLD DATA FORMAT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: world

# ============================================================
# DEFINITION
# ============================================================

cx22073jw world data is defined using JSON structures.

# ============================================================
# ROOT STRUCTURE
# ============================================================

{
  "world_id": "cx22073jw",
  "timeline": [],
  "entities": [],
  "events": [],
  "locations": [],
  "knowledge": []
}

# ============================================================
# TIMELINE
# ============================================================

fields:
- year
- era
- phase

# ============================================================
# ENTITIES
# ============================================================

fields:
- entity_id
- type
- name
- attributes

# ============================================================
# EVENTS
# ============================================================

fields:
- event_id
- year
- title
- description
- related_entities
- location_id

# ============================================================
# LOCATIONS
# ============================================================

fields:
- location_id
- name
- type

# ============================================================
# KNOWLEDGE
# ============================================================

fields:
- knowledge_id
- content
- related_events

# ============================================================
# RULES
# ============================================================

- all IDs must be unique
- references must use IDs only
- data must be immutable after creation
- structure must remain consistent

# ============================================================
# FINAL RULE
# ============================================================

World data must be structured, reference-based,
and independent from presentation layers.

