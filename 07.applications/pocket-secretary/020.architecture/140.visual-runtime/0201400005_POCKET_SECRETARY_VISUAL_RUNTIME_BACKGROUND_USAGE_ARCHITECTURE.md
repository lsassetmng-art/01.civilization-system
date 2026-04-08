# ============================================================
# POCKET SECRETARY VISUAL RUNTIME BACKGROUND USAGE ARCHITECTURE
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
uses background features from Visual Runtime.


# ============================================================
# 2. HOST ROLE
# ============================================================

PocketSecretary may provide:

explicit background override
screen-level background preference
background visibility preference through surface selection

PocketSecretary must not override
canonical background priority semantics.


# ============================================================
# 3. UX RULE
# ============================================================

PocketSecretary should prefer
persona-first visibility.

If background is delayed or degraded,
PocketSecretary should continue rendering persona
when the surface contract permits it.
