# ============================================================
# PERSONA STATE MACHINE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 007.persona
document_id: 1200070001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the Civilization-side world-facing persona state transition surface.

## 2. Scope

This document covers:
- persona states
- transition guards
- sanction effects
- death and reincarnation boundary

## 3. Canonical Source Of Truth

Canonical world-facing persona participation state belongs to CivilizationOS. Persona mutable canonical state remains PersonaOS-owned.

## 4. Exact Table Set

- persona_state
- persona_state_transition
- persona_state_guard_result
- persona_state_history

## 5. Exact Request / Response

Persona state mutation must occur only through approved persona mutation paths.

## 6. Exact Command / Event

Typical commands:
- persona.place
- persona.activate
- persona.restrict
- persona.suspend
- persona.mark_deceased

Typical events:
- persona.placed
- persona.activated
- persona.restricted
- persona.deceased

## 7. Authorization Boundary

Persona state mutation must respect persona authority and reviewed rules where needed.

## 8. State Machine

Allowed world-facing persona participation states:
- REGISTERED
- PLACED
- ACTIVE
- RESTRICTED
- SUSPENDED
- TRANSITIONING
- DECEASED
- REINCARNATION_PENDING
- SUPERSEDED

## 9. Transaction Boundary

Persona state transition must commit before projection or schedule refresh.

## 10. Idempotency

Repeated state transition requests must be safe or conflict-rejected.

## 11. Audit Trace

Sanction-driven and reviewed state changes must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_PERSONA_TRANSITION_FORBIDDEN
- VALIDATION_PERSONA_PLACEMENT_REQUIRED
- ACCESS_PERSONA_AUTHORITY_INSUFFICIENT

## 13. Observability

Persona state and restriction posture must be visible where required.

## 14. Failure / Recovery

- placement required before ACTIVE
- sanction may force RESTRICTED or SUSPENDED
- death-related transition must emit life event
- reincarnation must not erase historical identity trace

## 15. Acceptance Checklist

- persona states fixed
- transition guards fixed
- sanction effect fixed
- death/reincarnation boundary fixed

## Exact Civilization Persona State Scope Rule
## Exact Civilization Persona State Scope Rule

This document defines Civilization-side persona participation state only.

It may govern world-facing states such as:
- placed
- active in world
- restricted by world rule
- suspended by sanction
- deceased in world truth
- reincarnation_pending in world truth

It must not be interpreted as PersonaOS ownership of:
- internal mutable persona core
- internal memory canon
- internal growth canon
- internal emotion or tone canon
- internal visual mutable canon

## Exact Deceased And Reincarnation Boundary

CivilizationOS may own world-side death and life-event fact.
PersonaOS owns internal mutable interpretation and internal application outcome.
