# ============================================================
# STATE MACHINE DETAIL UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: state-machine-detail-ui-implementation
component: state-machine-detail-ui-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for state machine detail UI
inside Civilization.

# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- state visibility
- transition visibility
- hold visibility
- recovery visibility where supported
- terminal outcome visibility

# ============================================================
# 3. FINAL RULE
# ============================================================

State machine detail UI implementation must remain:

- transition-aware
- stage-explicit
- history-aware
