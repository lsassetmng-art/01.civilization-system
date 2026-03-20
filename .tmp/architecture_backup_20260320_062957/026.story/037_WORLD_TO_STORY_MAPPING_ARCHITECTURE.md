# ============================================================
# WORLD TO STORY MAPPING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story

# ============================================================
# DEFINITION
# ============================================================

Story is generated as a transformation of world data (cx22073jw).

World remains immutable.
Story is a derived, interactive representation.

# ============================================================
# MAPPING RULES
# ============================================================

event → scene  
entity → character  
location → background  
knowledge → narrative support  

# ============================================================
# EVENT TO SCENE
# ============================================================

rule:
- each event must map to at least one scene
- events may expand into multiple scenes

# ============================================================
# ENTITY TO CHARACTER
# ============================================================

rule:
- entity_id must be used as character_id
- no duplication allowed

# ============================================================
# LOCATION TO BACKGROUND
# ============================================================

rule:
- location_id must be referenced by scene
- visual representation is external

# ============================================================
# KNOWLEDGE USAGE
# ============================================================

rule:
- knowledge must not alter events
- knowledge may enrich dialogue

# ============================================================
# BRANCHING RULE
# ============================================================

- world must not branch
- story may branch
- branching must not alter world data

# ============================================================
# FINAL RULE
# ============================================================

Story must be a consistent, derived layer
on top of immutable world data.

