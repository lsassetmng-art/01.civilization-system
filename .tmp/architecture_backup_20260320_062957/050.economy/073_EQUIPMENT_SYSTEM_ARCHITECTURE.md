# ============================================================
# EQUIPMENT SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

Equipment system is domain-dependent.

# ============================================================
# RULE
# ============================================================

- equipment is NOT allowed in civilization domain
- equipment is allowed in game domains only

# ============================================================
# DOMAIN POLICY
# ============================================================

civilization:
- no equipment
- stat growth via education and experience

game domains:
- equipment allowed
- stat enhancement via items

# ============================================================
# PURPOSE
# ============================================================

- maintain realism in civilization
- allow gameplay mechanics in game domains

