# ============================================================
# EXPANDED SCREEN INVENTORY NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Summarizes screen inventory impact after expansion.

summary:
The competitor-aware feature expansion does not require
a full explosion of new top-level screens.

design_decision:
Most new capability should be absorbed as embedded surfaces
inside existing core screens.

why:
This preserves mobile immediacy and avoids UI fragmentation.

top_level_screen_growth_rule:
Only promote an embedded surface to its own screen
when edit density, review density, or operational complexity
becomes too high for the parent screen.
