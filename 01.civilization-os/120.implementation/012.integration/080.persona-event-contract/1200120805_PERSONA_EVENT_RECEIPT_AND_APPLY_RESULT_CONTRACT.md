# ============================================================
# PERSONA EVENT RECEIPT AND APPLY RESULT CONTRACT
# ============================================================

status: canonical-event-receive-contract
layer: implementation
domain: 012.integration
subdomain: 080.persona-event-contract
document_id: 1200120805
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact result envelope returned or persisted by PersonaOS
for CivilizationOS-origin Persona events.

## 2. Scope

This contract governs result fields for:

- delivery receipt
- acceptance decision
- mutable apply result
- signed snapshot refresh reference

## 3. Exact Result Envelope Minimum

Every PersonaOS-side result should contain:

- source_event_id
- source_event_type
- schema_version
- target_persona_ref
- receipt_status
- acceptance_status
- apply_status
- processed_at
- result_reason_code
- result_reason_text
- retryable_flag
- persona_processing_ref

Optional:
- signed_snapshot_ref
- snapshot_signature_ref
- snapshot_issued_at
- deferred_until
- apply_failure_code
- apply_failure_ref

## 4. Receipt Status Values

Canonical receipt_status values:

- received
- not_received
- invalid_envelope

## 5. Acceptance Status Values

Canonical acceptance_status values:

- accepted
- rejected
- deferred
- not_evaluated

## 6. Apply Status Values

Canonical apply_status values:

- not_applicable
- pending_apply
- applied
- apply_failed

## 7. Reason Code Rule

result_reason_code must explain the highest-impact PersonaOS-side outcome.

Examples:
- PERSONA_TARGET_NOT_FOUND
- PERSONA_POLICY_REJECTED
- PERSONA_DEFERRED_AWAITING_STATE
- PERSONA_APPLY_COMPLETED
- PERSONA_APPLY_RUNTIME_FAILED

## 8. Signed Snapshot Rule

signed_snapshot_ref may be returned only when:

- a new public-consumable snapshot was issued, or
- an already valid snapshot remains the correct public reference

Signed snapshot return does not grant CivilizationOS mutable-state authority.

## 9. Idempotency Rule

Repeated processing of the same source_event_id must preserve stable
result semantics unless PersonaOS explicitly supersedes the earlier result.

## 10. Acceptance Checklist

- exact result envelope fixed
- receipt_status fixed
- acceptance_status fixed
- apply_status fixed
- signed snapshot return rule fixed

## Result Envelope Use Rule
## Result Envelope Use Rule

The Persona result envelope is an integration-result surface.

It may drive:
- retry
- reconciliation
- signed snapshot refresh pickup
- failure reporting

It may not drive direct mutable-state overwrite from CivilizationOS.
