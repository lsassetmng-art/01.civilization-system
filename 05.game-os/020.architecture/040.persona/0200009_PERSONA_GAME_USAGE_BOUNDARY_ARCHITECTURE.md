# ============================================================
# PERSONA GAME USAGE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the boundary of Persona usage inside GameOS.

allowed:
- character presentation
- NPC personality selection
- dialogue style selection
- in-game assistant enablement
- event reaction style

not_allowed:
- direct overwrite of game primary progression truth by PersonaOS
- trust bypass by UI or operator path
