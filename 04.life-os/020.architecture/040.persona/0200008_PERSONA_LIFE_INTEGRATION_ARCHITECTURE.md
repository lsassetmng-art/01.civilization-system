# ============================================================
# PERSONA LIFE INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical integration architecture
between LifeOS and PersonaOS.

direction_a:
LifeOS sends growth events or growth requests to PersonaOS.

direction_b:
PersonaOS sends usage permission, access state, release validity,
binding state, and trust-related synchronization results to LifeOS.

principles:
- Persona truth belongs to PersonaOS
- Life truth belongs to LifeOS
- synchronization must use explicit contracts
- no direct cross-os truth overwrite
