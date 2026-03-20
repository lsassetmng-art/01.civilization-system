# ============================================================
# LOCATION COST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Cost of living is influenced by location.

# ============================================================
# FORMULA
# ============================================================

final_expense = base_cost × location_index × personality_modifier

# ============================================================
# RULE
# ============================================================

- each location must define cost index
- all personas must have a location
- location must influence all expenses

# ============================================================
# PURPOSE
# ============================================================

- simulate regional differences
- create economic diversity
- enable strategic relocation

