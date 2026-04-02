# ============================================================
# TICK PARAMETER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: tick-parameter
component: tick-parameter

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for concrete tick parameter families
inside Civilization.

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

The runtime must allow explicit parameterization of:

- base tick interval
- short-cycle update interval
- long-cycle trigger interval
- domain-specific override interval

# ============================================================
# 3. FINAL RULE
# ============================================================

Tick parameter architecture must remain:

- interval-aware
- override-capable
- domain-compatible
