# ============================================================
# PERSONA GAME INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical integration architecture
between GameOS and PersonaOS.

direction_a:
GameOS sends growth events or growth requests to PersonaOS.

direction_b:
PersonaOS sends usage permission, access state, release validity,
binding state, and trust-related synchronization results to GameOS.

principles:
- Persona truth belongs to PersonaOS
- Game truth belongs to GameOS
- synchronization must use explicit contracts
- no direct cross-os truth overwrite
