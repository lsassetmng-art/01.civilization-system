# ============================================================
# PAYMENT RULE MODEL
# ============================================================

status: canonical
layer: model
domain: economy

# ============================================================
# CORE RULES
# ============================================================

1. Mixed payment is NOT allowed

2. One product = one currency

3. Same product in multiple currencies requires separate records

4. Only REAL_MONEY purchases are withdrawable

5. NATIONAL_CURRENCY cannot be converted to real money

6. All rewards are DB controlled

# ============================================================
# PAYMENT TYPES
# ============================================================

- REAL_MONEY
- NATIONAL_CURRENCY
- CIV_CASH

# ============================================================
# DESIGN INTENT
# ============================================================

- simplicity for users
- fraud prevention
- accounting consistency

