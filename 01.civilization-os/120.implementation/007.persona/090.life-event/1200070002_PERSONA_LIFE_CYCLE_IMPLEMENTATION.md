# ============================================================
# PERSONA LIFE CYCLE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 007.persona
document_id: 1200070002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical life-cycle stages and related event handoff for persona.

## 2. Scope

This document covers:
- birth or creation
- placement
- growth
- relationship change
- role acquisition
- schedule evolution
- major life event
- death and end state
- reincarnation path where allowed

## 3. Canonical Source Of Truth

Persona life-cycle truth is defined through persona-owned life-cycle
and life-event records.

## 4. Exact Table Set

- persona_life_cycle
- persona_life_event_link
- persona_state_history
- persona_schedule_revision

## 5. Exact Request / Response

Major persona life-cycle changes must be explicit operations or approved runtime effects.

## 6. Exact Command / Event

Typical events:
- persona.created
- persona.placed
- persona.relationship_changed
- persona.major_life_event_recorded
- persona.deceased

## 7. Authorization Boundary

Life-cycle mutation must respect persona and system-side authority boundaries.

## 8. State Machine

Life-cycle stages must remain distinguishable from persona state machine.

## 9. Transaction Boundary

Major life-cycle mutation must commit before downstream history projection.

## 10. Idempotency

Repeated life-event registration for same causal fact must be safe.

## 11. Audit Trace

Reviewed life-cycle mutation and correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_PERSONA_LIFE_EVENT_INVALID
- STATE_PERSONA_LIFE_CYCLE_CONFLICT
- ACCESS_PERSONA_LIFE_CYCLE_FORBIDDEN

## 13. Observability

Major persona life-cycle progression must remain traceable.

## 14. Failure / Recovery

Major persona life transition must produce:
- immutable life event record
- persona state transition trace
- event emission linkage

## 15. Acceptance Checklist

- life-cycle surfaces fixed
- canonical records fixed
- event handoff fixed
- immutable life-event rule fixed

## Exact Life Event Ownership Split
## Exact Life Event Ownership Split

CivilizationOS may own:
- world-side life event fact
- civic and institutional consequence
- legal or market implication
- public event trace

PersonaOS owns:
- internal mutable interpretation
- internal acceptance decision
- internal apply result

## Exact Life Event Apply Rule

A Civilization life_event notification does not directly mutate Persona mutable truth.

CivilizationOS emits.
PersonaOS accepts or rejects.
PersonaOS applies or fails to apply.
