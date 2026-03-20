# ============================================================
# PERSONA IDENTITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Persona identity defines who the actor is in-world.

components:
- name
- identity markers
- background
- historical continuity
- public identity state

rules:
- identity history must remain traceable
- identity cannot be silently replaced
- identity-linked changes require explicit events

final_rule:
Persona identity must remain stable, explicit, and historically consistent.
