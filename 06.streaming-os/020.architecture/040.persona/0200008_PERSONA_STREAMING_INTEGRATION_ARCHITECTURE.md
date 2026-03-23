# ============================================================
# PERSONA STREAMING INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical integration architecture
between StreamingOS and PersonaOS.

direction_a:
StreamingOS sends growth events or growth requests to PersonaOS.

direction_b:
PersonaOS sends usage permission, access state, release validity,
binding state, and trust-related synchronization results to StreamingOS.

principles:
- Persona truth belongs to PersonaOS
- Streaming truth belongs to StreamingOS
- synchronization must use explicit contracts
- no direct cross-os truth overwrite
