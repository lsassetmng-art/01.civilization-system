# ============================================================
# FIELD FACILITY MODIFIER EVALUATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-facility-modifier-evaluation
component: field-facility-modifier-evaluation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical evaluation architecture
for facility economics and timing modifiers
applied by nation, city, district,
operator class, and event state
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Base values come from DB master.
Context modifiers adjust those values.

Modifier evaluation must separate:

- base values
- nation modifiers
- city modifiers
- district modifiers
- operator modifiers
- event or temporary modifiers
- final evaluated values


# ============================================================
# 3. EVALUATION PRINCIPLE
# ============================================================

Final evaluated values must be computed
from stable, auditable steps.

The system must be able to explain:

- which modifiers applied
- in what order
- how the final value was produced


# ============================================================
# 4. FINAL RULE
# ============================================================

Modifier evaluation must be deterministic,
traceable,
and suitable for UI explanation.
