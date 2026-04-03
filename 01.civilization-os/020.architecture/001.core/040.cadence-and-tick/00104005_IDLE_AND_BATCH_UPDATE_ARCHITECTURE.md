# ============================================================
# IDLE AND BATCH UPDATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: idle-and-batch-update
component: idle-and-batch-update

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for idle-state update,
background catchup,
and batch progression
inside Civilization.

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

When the world is not actively observed,
Civilization may use reduced-frequency update
or batch catchup update,
while preserving simulation truth.

# ============================================================
# 3. FINAL RULE
# ============================================================

Idle and batch update architecture must remain:

- catchup-capable
- truth-preserving
- performance-aware
