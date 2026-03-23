# ============================================================
# EXTERNAL OS PERSONA BIDIRECTIONAL SYNC ARCHITECTURE RULE
# Civilization System Canonical Standard
# ============================================================

status: canonical
scope: cross-os
layer: 020.architecture

owner: Boss
prepared_by: Zero

purpose:
Define the canonical bidirectional integration architecture
between PersonaOS and external OS domains.

applies_to:
- BusinessOS
- LifeOS
- GameOS
- StreamingOS

principles:
- Persona truth belongs to PersonaOS
- external OS truth belongs to each external OS
- no direct cross-os truth overwrite
- synchronization must use explicit contracts
- synchronization must use outbox/inbox or equivalent canonical sync paths

direction_a:
External OS -> PersonaOS
- growth event
- growth request
- context-derived growth trigger

direction_b:
PersonaOS -> External OS
- usage permission status
- access grant status
- release validity
- usage binding state
- trust-related state
