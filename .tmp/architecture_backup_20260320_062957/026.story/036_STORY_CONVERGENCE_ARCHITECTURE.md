# ============================================================
# STORY CONVERGENCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story is a branching but converging narrative.

# ============================================================
# STRUCTURE
# ============================================================

flow:
start → branching → convergence → ending

rules:
- branching is allowed during progression
- all branches must converge to a unified ending
- full divergent endings are prohibited

# ============================================================
# BRANCHING
# ============================================================

branching:
- dialogue choices
- exploration outcomes
- puzzle results

effects:
- flags
- temporary scene variation

rules:
- branching must be controlled
- infinite branching is prohibited

# ============================================================
# CONVERGENCE
# ============================================================

definition:
All narrative paths must merge before ending.

rules:
- convergence points must be explicitly defined
- all branches must reach convergence

# ============================================================
# ENDING
# ============================================================

rules:
- ending must be single and deterministic
- variation in expression is allowed
- variation in outcome is prohibited

# ============================================================
# FINAL RULE
# ============================================================

Story must provide player agency during progression,
while maintaining a single unified narrative conclusion.

