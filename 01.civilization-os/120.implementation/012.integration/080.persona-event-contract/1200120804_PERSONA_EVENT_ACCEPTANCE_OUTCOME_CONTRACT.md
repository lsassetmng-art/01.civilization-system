# ============================================================
# PERSONA EVENT ACCEPTANCE OUTCOME CONTRACT
# ============================================================

status: canonical-event-receive-contract
layer: implementation
domain: 012.integration
subdomain: 080.persona-event-contract
document_id: 1200120804
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical outcome contract that CivilizationOS expects
from PersonaOS after Persona-relevant event delivery.

## 2. Scope

This contract governs PersonaOS-side outcome classes for:

- purchase events
- grant events
- revoke events
- world_event notifications
- life_event notifications

## 3. Canonical Outcome Layers

PersonaOS-side processing must distinguish:

- receipt outcome
- acceptance outcome
- apply outcome

These must not collapse into one ambiguous status.

## 4. Acceptance Outcome Classes

Canonical acceptance outcome values are:

- accepted
- rejected
- deferred

Meaning:

accepted:
- PersonaOS accepted the world-side fact for further processing

rejected:
- PersonaOS rejected the event for Persona-side mutable application

deferred:
- PersonaOS received the event but postponed acceptance decision

## 5. Apply Outcome Classes

Canonical apply outcome values are:

- not_applicable
- pending_apply
- applied
- apply_failed

Meaning:

not_applicable:
- PersonaOS accepted receipt or acceptance but no mutable application is needed

pending_apply:
- PersonaOS accepted and queued later mutable application

applied:
- PersonaOS accepted and completed mutable application

apply_failed:
- PersonaOS accepted but mutable application failed

## 6. Hard Rule

CivilizationOS must not interpret:
- received
as
- applied

CivilizationOS must not interpret:
- accepted
as
- applied

## 7. Final Combined Outcome Examples

Valid combined examples include:

- received + accepted + pending_apply
- received + accepted + applied
- received + accepted + apply_failed
- received + rejected + not_applicable
- received + deferred + not_applicable

## 8. Invalid Outcome Examples

Invalid combinations include:

- not_received + accepted
- rejected + applied
- deferred + applied
- apply_failed without accepted

## 9. Acceptance Checklist

- receipt/accept/apply split fixed
- canonical acceptance outcomes fixed
- canonical apply outcomes fixed
- invalid combinations fixed

## Outcome Consumption Rule
## Outcome Consumption Rule

CivilizationOS may consume receive-side outcome only for:

- audit
- integration status display
- retry posture
- downstream public-display refresh decision

CivilizationOS may not consume receive-side outcome as permission to directly edit Persona mutable truth.
