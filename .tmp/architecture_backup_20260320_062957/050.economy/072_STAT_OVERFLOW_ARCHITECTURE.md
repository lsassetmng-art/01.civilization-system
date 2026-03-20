# ============================================================
# STAT OVERFLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: persona

# ============================================================
# DEFINITION
# ============================================================

Stats have a base cap of 100.
Overflow beyond 100 is allowed only via bonus.

# ============================================================
# STRUCTURE
# ============================================================

base_value   (0-100)
bonus_value  (equipment / buff)
final_value  (base + bonus)

# ============================================================
# RULE
# ============================================================

- base_value must not exceed 100
- overflow is only allowed via bonus_value
- final_value may exceed 100 within defined limits

# ============================================================
# LIMIT
# ============================================================

final_value must have a hard cap (e.g. 150)

# ============================================================
# SOURCE
# ============================================================

bonus_value sources:

- equipment
- buffs
- temporary effects

# ============================================================
# RESTRICTION
# ============================================================

- no permanent stat increase via payment
- removing equipment removes bonus

# ============================================================
# PURPOSE
# ============================================================

- enable monetization
- maintain balance
- prevent stat inflation

