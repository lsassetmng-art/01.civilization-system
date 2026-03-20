# ============================================================
# WORLD ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

World represents a multi-nation system where nations interact
through trade, diplomacy, migration, and conflict.

# ============================================================
# STRUCTURE
# ============================================================

world
 ├ nations
 ├ relations
 ├ trade
 ├ migration
 └ global_events

# ============================================================
# RELATIONS
# ============================================================

- allied
- neutral
- hostile
- war

# ============================================================
# INTERACTIONS
# ============================================================

- trade
- currency exchange
- migration
- policy influence

# ============================================================
# RULE
# ============================================================

- nations must interact
- relations must affect economy and mobility
- global events must affect all nations

# ============================================================
# PURPOSE
# ============================================================

- simulate global system
- create diversity and imbalance
- enable cross-nation gameplay

