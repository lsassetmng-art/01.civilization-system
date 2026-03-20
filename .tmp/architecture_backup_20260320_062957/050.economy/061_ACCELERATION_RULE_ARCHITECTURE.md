# ============================================================
# ACCELERATION RULE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

Acceleration modifies time progression but must not create
uncontrolled growth inflation.

# ============================================================
# RULE
# ============================================================

During acceleration:

- growth_bonus MUST be disabled
- skill_bonus MUST remain active
- performance rewards MUST remain active
- paid effects MUST remain active

# ============================================================
# GROWTH BONUS
# ============================================================

Growth bonus includes:

- passive time-based growth
- natural accumulation bonuses
- system-provided growth boosts

These must not be applied during acceleration.

# ============================================================
# CALCULATION
# ============================================================

Normal:

output = (base + growth_bonus) × skill_bonus + performance

Accelerated:

output = base × skill_bonus + performance

# ============================================================
# PURPOSE
# ============================================================

- prevent exponential growth abuse
- preserve skill-based progression
- maintain fair economy

