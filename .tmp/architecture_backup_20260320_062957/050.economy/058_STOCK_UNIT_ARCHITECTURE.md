# ============================================================
# STOCK UNIT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

Stocks must be traded strictly in fixed unit sizes.

Fractional shares are not allowed.

# ============================================================
# UNIT SIZE
# ============================================================

Each company defines:

- unit_size

# ============================================================
# RULES
# ============================================================

- trades must be multiples of unit_size
- fractional shares are forbidden
- insufficient funds must block purchase

# ============================================================
# BUY CONDITION
# ============================================================

user_balance >= stock_price × unit_size

# ============================================================
# SELL CONDITION
# ============================================================

selling must also follow unit_size multiples

# ============================================================
# PURPOSE
# ============================================================

- eliminate fractional complexity
- simplify accounting
- enforce deterministic behavior

