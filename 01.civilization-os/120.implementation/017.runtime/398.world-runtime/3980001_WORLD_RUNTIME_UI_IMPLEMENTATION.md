# ============================================================
# WORLD RUNTIME UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: world-runtime-ui-implementation
component: world-runtime-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for upper world runtime UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

World runtime UI must implement:

- runtime summary visibility
- scheduler and tick visibility
- movement visibility
- facility usage visibility
- state machine visibility
- intervention visibility
- map reflection visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. tick execution summary
2. scheduler summary
3. movement summary
4. facility usage summary
5. state-machine summary
6. intervention summary
7. map reflection summary


# ============================================================
# 4. FINAL RULE
# ============================================================

World runtime UI implementation must remain:

- runtime-aware
- summary-first
- scheduler-aware
- state-machine-aware
