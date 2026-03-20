# ============================================================
# AERIAL ACCESS ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: aerial

# ============================================================
# DEFINITION
# ============================================================

Aerial is a read-access control layer for cx22073jw data.

It determines which parts of the world data
are visible to the player within Story.

# ============================================================
# SCOPE
# ============================================================

Aerial is limited to:

- data visibility control within Story
- filtering cx22073jw data

Aerial does NOT control:

- education systems
- economy systems
- global system access

# ============================================================
# RESPONSIBILITIES
# ============================================================

- filter data visibility
- enforce timeline-based access
- apply unlock-based visibility rules

# ============================================================
# DATA FLOW
# ============================================================

Story request
→ Aerial filter
→ cx22073jw data
→ filtered result
→ Story display

# ============================================================
# RULES
# ============================================================

- Aerial must not control story progression
- Aerial must not modify data
- Aerial must only filter visibility
- Aerial must be deterministic

# ============================================================
# EXAMPLE
# ============================================================

year <= 18:
→ visible

year >= 19:
→ hidden unless unlocked

# ============================================================
# FINAL RULE
# ============================================================

Aerial is a visibility filter,
not a system controller.

