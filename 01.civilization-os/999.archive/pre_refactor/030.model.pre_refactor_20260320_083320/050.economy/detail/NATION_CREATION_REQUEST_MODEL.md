# ============================================================
# NATION_CREATION_REQUEST MODEL
# ============================================================

status: draft
layer: model
domain: economy
model: NATION_CREATION_REQUEST

# ============================================================
# PURPOSE
# ============================================================

Defines the NATION_CREATION_REQUEST within Civilization economy system.

# ============================================================
# CORE ATTRIBUTES (ABSTRACT)
# ============================================================

id
created_at
updated_at

# ============================================================
# RELATIONS
# ============================================================

# (draft_pending_definition)

# ============================================================
# RULES
# ============================================================

- DB controlled
- no implicit calculation
- event-driven updates

