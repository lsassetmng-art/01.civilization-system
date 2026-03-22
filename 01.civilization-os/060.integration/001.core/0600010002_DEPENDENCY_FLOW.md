# ============================================================
# DEPENDENCY FLOW
# ============================================================

PersonaSystem → Civilization → Applications

Internal flow:

world → economy → player → runtime

Forbidden:

- reverse dependency
- direct mutation across domains

