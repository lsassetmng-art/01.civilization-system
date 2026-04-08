# ============================================================
# POCKET SECRETARY SURFACE MAPPING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document maps PocketSecretary screens
to canonical Visual Runtime surface classes.


# ============================================================
# 2. RECOMMENDED MAPPING
# ============================================================

main assistant screen
-> assistant_main

compact row / small summary card
-> assistant_compact

chat thread side display
-> chat_side

persona detail card
-> profile_card

full immersive visual screen
-> full_scene


# ============================================================
# 3. RULES
# ============================================================

PocketSecretary must not invent private render semantics
from screen names alone.

PocketSecretary must map every usage
to a canonical surface class first.
