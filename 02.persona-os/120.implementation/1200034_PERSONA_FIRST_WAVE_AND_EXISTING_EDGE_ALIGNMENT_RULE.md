# PERSONA FIRST WAVE AND EXISTING EDGE ALIGNMENT RULE

status: confirmed
system: PersonaOS
layer: implementation
confirmed_at: 20260418_121148

purpose:
Aligns first-wave PersonaOS design work with the confirmed existing Edge catalog.

alignment_rules:
- first-wave design work remains focused on orchestrator-to-truth-boundary clarity
- persona-state-apply is now the preferred concrete existing Edge reference for the current runtime-engine path
- first-wave edge_apply_orchestrator reasoning must be read as the design-side interpretation of the existing persona-state-apply function family role
- no physical rename is required to continue design work
- future implementation discussion should map first-wave design artifacts to existing Edge names before any code work begins

resulting_reading:
- design-side alias: edge_apply_orchestrator
- existing concrete edge name: persona-state-apply

scope_limit:
This document updates design interpretation only.
It does not start implementation.

