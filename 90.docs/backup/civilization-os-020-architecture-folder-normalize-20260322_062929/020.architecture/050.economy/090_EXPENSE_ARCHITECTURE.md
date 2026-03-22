# ============================================================
# EXPENSE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# FORMULA
# ============================================================

final_expense =
base_cost
× location_modifier
× personality_modifier
× company_price_factor

# ============================================================
# RULE
# ============================================================

- food and daily necessities are influenced by personality
- address influences expense
- company price range influences expense
- all base values are DB-controlled

