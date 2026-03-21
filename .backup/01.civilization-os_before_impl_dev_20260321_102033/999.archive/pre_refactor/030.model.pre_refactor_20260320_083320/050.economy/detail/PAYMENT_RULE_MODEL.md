# ============================================================
# PAYMENT RULE MODEL
# ============================================================

status: canonical
layer: model
domain: economy

# ============================================================
# PURPOSE
# ============================================================

Defines payment constraints in Civilization.

# ============================================================
# RULES
# ============================================================

1. Mixed payment is NOT allowed
2. One product = one currency
3. Same product in multiple currencies requires separate product records
4. Only real money purchases are withdrawable
5. National currency cannot be converted to real money
6. All rewards (login, system, nation) are DB controlled

# ============================================================
# PAYMENT TYPES
# ============================================================

- REAL_MONEY
- NATIONAL_CURRENCY
- CIV_CASH

# ============================================================
# CONSEQUENCES
# ============================================================

- simplifies UX
- prevents fraud
- ensures accounting consistency

