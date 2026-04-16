# ============================================================
# POCKET SECRETARY VISUAL RUNTIME STATE HANDLING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
requests state changes from Visual Runtime.


# ============================================================
# 2. HOST-SIDE STATE TYPES
# ============================================================

PocketSecretary may request:

initial visual state
expression hint
animation mode hint
surface mode change
background override
refresh request


# ============================================================
# 3. BOUNDARY RULE
# ============================================================

PocketSecretary may request state changes,
but must not directly mutate runtime internals.

All state changes must go through
canonical runtime public interface.


# ============================================================
# 4. DEFAULT RULE
# ============================================================

If PocketSecretary does not provide state hints,
Visual Runtime must apply canonical defaults.
