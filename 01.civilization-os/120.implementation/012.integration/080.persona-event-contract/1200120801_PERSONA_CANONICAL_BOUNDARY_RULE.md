# ============================================================
# PERSONA CANONICAL BOUNDARY RULE
# ============================================================

status: canonical-boundary-rule
layer: implementation
domain: 012.integration
subdomain: 080.persona-event-contract
document_id: 1200120801
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical boundary between CivilizationOS and PersonaOS.

## 2. Canonical Ownership Rule

Civilization-wide normative truth belongs to CivilizationOS.

Persona canonical mutable truth belongs to PersonaOS.

## 3. CivilizationOS Responsibility

CivilizationOS owns:

- world rules
- normative and legal world truth
- government and public-institution truth
- marketplace transaction truth
- ownership and civic/world event generation
- public display consumption of signed snapshot
- purchase / grant / revoke / world_event / life_event emission

## 4. PersonaOS Responsibility

PersonaOS owns:

- persona mutable state
- persona internal memory, growth, emotional state, tone state
- persona internal visual mutable state
- persona acceptance or rejection of incoming Civilization events
- persona-side application of accepted effects

## 5. Hard Boundary

CivilizationOS must not directly hold or directly update persona mutable state.

Direct table mutation against Persona-side mutable truth is prohibited.

## 6. Integration Rule

CivilizationOS to PersonaOS integration must always go through explicit event contracts.

Direct table update is prohibited.
Implicit side effects are prohibited.
Silent state mirroring is prohibited.

## 7. Snapshot Rule

Public or external representation must use signed snapshot.

CivilizationOS consumes signed snapshot.
CivilizationOS does not reconstruct persona mutable truth from direct mutable access.

## 8. Event Acceptance Rule

CivilizationOS emits world-side fact and entitlement-side fact.
PersonaOS decides:

- accepted
- rejected
- deferred
- applied
- failed_to_apply

CivilizationOS must not assume application merely because emission succeeded.

## 9. Marketplace Rule

Marketplace purchase is a world-side transaction and ownership event.

Persona internal state change may occur only after PersonaOS accepts
and applies the relevant event.

## 10. Acceptance Checklist

- boundary ownership fixed
- direct-update prohibition fixed
- event-only integration fixed
- signed snapshot consumption rule fixed

## Receive-Side Contract Dependency
## Receive-Side Contract Dependency

The Persona canonical boundary rule depends on explicit receive-side contract handling.

CivilizationOS must distinguish:

- event emitted
- event received
- event accepted or rejected or deferred
- mutable apply completed or failed
- signed snapshot refreshed or not refreshed

Boundary compliance is broken if CivilizationOS assumes emission equals apply.

## Exact Civilization-Side Ambiguity Prevention Rule
## Exact Civilization-Side Ambiguity Prevention Rule

Within CivilizationOS documents, avoid ambiguous wording that suggests:

- CivilizationOS owns persona mutable canon
- CivilizationOS stores persona memory or growth canon
- CivilizationOS directly updates persona mutable internals
- signed snapshot acts as mutable-state authority

Whenever Persona-related wording appears in CivilizationOS,
state whether the surface is:
- world-owned fact
- integration contract
- signed snapshot consumption
- reference-only binding
