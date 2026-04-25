# ============================================================
# CONSULTATION COMMON OVERVIEW
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the common consultation framework used by secretary-facing
applications and Persona-driven interaction surfaces.

scope:
This common layer defines:
- consultation tier
- consultation scope
- advisory-only boundary
- consultation output boundary

non-scope:
This layer does not define app-specific plan gating,
screen layout, or product packaging.

# EXACT READY ARCHITECTURE REINFORCEMENT

status_extension: author-reviewed-with-architecture-reinforcement
reinforced_at: 20260417_150617
reinforcement_scope:
- component boundary clarification
- flow boundary clarification
- persistence edge clarification
- failure path clarification

domain: generic

minimum_architecture_requirements:
- define entry component
- define coordination or orchestration component
- define persistence or state boundary
- define outbound interface or integration boundary
- define reject, retry, and terminal failure path where applicable

mandatory_flow_requirements:
- happy path
- reject or block path
- retry or recovery path where applicable
- dead-letter or terminal failure path where applicable

mandatory_boundary_requirements:
- no hidden write path
- no shortcut around validation or policy
- no silent external effect
- no terminal action without observable evidence

architecture_ready_note:
This reinforcement does not replace the authored architectural content above.
It marks the minimum exact-ready architectural items that must be explicit
before implementation contract fixation is considered complete.
