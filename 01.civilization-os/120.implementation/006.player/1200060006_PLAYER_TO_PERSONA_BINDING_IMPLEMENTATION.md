# ============================================================
# PLAYER TO PERSONA BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 006.player
document_id: 1200060006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact relationship between player-level control authority
and persona-level world participation.

## 2. Scope

This document covers:
- player/persona binding
- control mode
- authority scope
- revoke and suspension effect

## 3. Canonical Source Of Truth

Player-to-persona binding truth is defined here.
It does not collapse player identity into persona identity.

## 4. Exact Table Set

- player_persona_binding
- player_persona_binding_revision
- player_persona_binding_audit

## 5. Exact Request / Response

Binding create, revise, suspend, and revoke are explicit operations.

## 6. Exact Command / Event

Typical commands:
- player_persona.bind
- player_persona.revoke
- player_persona.suspend

Typical events:
- player_persona.bound
- player_persona.revoked
- player_persona.suspended

## 7. Authorization Boundary

Binding mutation requires explicit player-side permission and reviewed rules where needed.

## 8. State Machine

Recommended binding states:
- ACTIVE
- SUSPENDED
- REVOKED
- SUPERSEDED

## 9. Transaction Boundary

Binding mutation must commit before downstream control effect is exposed.

## 10. Idempotency

Repeat bind/revoke requests must be idempotent or conflict-safe.

## 11. Audit Trace

All binding changes must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_PLAYER_PERSONA_BINDING_INVALID
- ACCESS_PLAYER_PERSONA_BINDING_FORBIDDEN
- STATE_PLAYER_PERSONA_BINDING_REVOKED

## 13. Observability

Binding effect and suspension must remain visible to operator tooling.

## 14. Failure / Recovery

- sanction may suspend binding effect
- revoked binding must terminate delegated action path
- ambiguous control scope must fail closed

## 15. Acceptance Checklist

- player/persona split fixed
- binding fields fixed
- revoke/suspend path fixed

## Exact Binding Non-Ownership Rule
## Exact Binding Non-Ownership Rule

Player-to-persona binding gives Civilization-side control reference
and participation reference only.

It does not transfer ownership of:
- persona mutable state
- persona memory
- persona growth
- persona emotion or tone
- persona visual mutable canon

## Exact Binding Output Rule

Binding may expose:
- persona reference
- world participation reference
- authority scope reference
- signed snapshot reference where applicable

Binding must not become a surrogate mutable-persona storage surface.
