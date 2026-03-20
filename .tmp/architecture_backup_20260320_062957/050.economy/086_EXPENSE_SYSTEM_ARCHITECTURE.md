# ============================================================
# EXPENSE SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Expense is determined by base cost modified by personality.

# ============================================================
# FORMULA
# ============================================================

final_expense = base_cost × personality_modifier

# ============================================================
# PERSONALITY FACTORS
# ============================================================

- frugality
- luxury_preference
- impulsiveness
- discipline

# ============================================================
# RULE
# ============================================================

- all base costs must be database-controlled
- personality must influence expense
- different expense categories must have different modifiers

# ============================================================
# EFFECT
# ============================================================

- same income leads to different life outcomes
- personality drives economic behavior

# ============================================================
# PURPOSE
# ============================================================

- simulate human behavior
- create diversity in economy
- enable strategic decision-making

