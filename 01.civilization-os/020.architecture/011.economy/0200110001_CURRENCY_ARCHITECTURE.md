# ============================================================
# CURRENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# TYPES
# ============================================================

- fiat
- national_currency
- civcash

# ============================================================
# RULE
# ============================================================

- currency mixing in a single purchase is not allowed
- pricing currency is defined per product
- only designated real-money paths may be converted externally

