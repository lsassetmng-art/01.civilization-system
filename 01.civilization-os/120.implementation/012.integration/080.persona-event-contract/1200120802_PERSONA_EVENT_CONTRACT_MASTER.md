# ============================================================
# PERSONA EVENT CONTRACT MASTER
# ============================================================

status: canonical-event-contract-master
layer: implementation
domain: 012.integration
subdomain: 080.persona-event-contract
document_id: 1200120802
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical event envelope used by CivilizationOS when
communicating persona-relevant facts to PersonaOS.

## 2. Canonical Direction

This contract governs CivilizationOS -> PersonaOS event emission.

It does not grant CivilizationOS direct mutable authority over PersonaOS data.

## 3. Event Envelope Minimum

Every event must contain:

- event_id
- event_type
- schema_version
- producer_system
- target_system
- request_id
- causation_id
- correlation_id
- idempotency_key
- occurred_at
- actor_context
- subject_context
- world_context
- payload

## 4. Fixed Producer And Target

producer_system:
- CivilizationOS

target_system:
- PersonaOS

## 5. Actor Context Minimum

actor_context should declare as applicable:

- user_id
- player_id
- institution_id
- company_id
- government_actor_id
- system_actor_code

## 6. Subject Context Minimum

subject_context should declare as applicable:

- persona_id
- persona_public_ref
- persona_group_ref

CivilizationOS must not assume mutable-persona authority from these references.

## 7. World Context Minimum

world_context should declare as applicable:

- world_id
- nation_id
- city_id
- facility_id
- marketplace_order_id
- legal_case_id
- world_event_id
- life_event_id

## 8. Payload Rule

Payload must describe:

- world-side fact
- entitlement-side fact
- proposed external effect
- source event linkage

Payload must not describe direct Persona table mutation instructions.

## 9. Idempotency Rule

PersonaOS must be able to deduplicate repeated delivery using:
- event_id
- idempotency_key

## 10. Response Semantics

CivilizationOS should expect PersonaOS-side outcome classes such as:

- received
- accepted
- rejected
- deferred
- applied
- apply_failed

These outcomes belong to PersonaOS-side processing truth.

## 11. Snapshot Reference Rule

If public display linkage is needed, event may include:

- signed_snapshot_ref
- snapshot_signature_ref
- snapshot_issued_at

But signed snapshot is consumption input only,
not mutable-state authority.

## 12. Acceptance Checklist

- event envelope fixed
- payload boundary fixed
- idempotency rule fixed
- no-direct-mutation-instruction rule fixed

## PersonaOS Receive-Side Outcome Contract
## PersonaOS Receive-Side Outcome Contract

CivilizationOS-origin Persona events must expect PersonaOS-side outcome layers:

- receipt_status
- acceptance_status
- apply_status

Canonical acceptance_status values:
- accepted
- rejected
- deferred

Canonical apply_status values:
- not_applicable
- pending_apply
- applied
- apply_failed

CivilizationOS must not collapse these layers into one status.

## Contract Set Completeness Rule
## Contract Set Completeness Rule

The Persona integration contract set is incomplete unless it contains both:

- send-side fact contracts
- receive-side outcome and snapshot contracts

Send-side-only documentation is insufficient for canonical Persona integration.
