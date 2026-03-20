# ============================================================
# STORY SNAPSHOT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story

# ============================================================
# DEFINITION
# ============================================================

A Snapshot is a fixed extraction of world data
used for story reconstruction.

It defines the boundary of story data.

# ============================================================
# COMPONENTS
# ============================================================

Snapshot consists of:

- time
- scope
- depth

# ============================================================
# TIME
# ============================================================

Defines the temporal boundary.

types:
- event_id
- timestamp
- year

# ============================================================
# SCOPE
# ============================================================

Defines included entities and locations.

examples:
- specific entities
- region-based selection

# ============================================================
# DEPTH
# ============================================================

Defines relation traversal depth.

rules:
- depth 0 = direct only
- depth N = N-hop expansion

# ============================================================
# DATA INCLUDED
# ============================================================

- entities
- events
- relationships
- knowledge

# ============================================================
# PROPERTIES
# ============================================================

- immutable
- deterministic
- reproducible

# ============================================================
# GENERATION
# ============================================================

world data
↓
query extraction
↓
snapshot creation

# ============================================================
# IDENTIFIER
# ============================================================

snapshot_id must be deterministic
based on input parameters.

# ============================================================
# FINAL RULE
# ============================================================

Snapshot defines the complete boundary
of a story instance.

