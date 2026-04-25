# ============================================================
# INCIDENT AND ABNORMAL RUNTIME
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_runtime
document_id: 3980004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines runtime handling of incidents, disease, legal runtime state,
and abnormal behavior escalation.

## 2. Scope

This document covers:
- incident runtime
- abnormal runtime
- disease runtime linkage
- legal runtime linkage
- escalation

## 3. Canonical Source Of Truth

Incident runtime and abnormal runtime are runtime execution truths,
not final legal or medical judgment truths.

## 4. Exact Table Set

- runtime_incident_case
- runtime_abnormal_case
- incident_escalation
- runtime_disease_link
- runtime_legal_link

## 5. Exact Request / Response

Incident and abnormal handling are explicit runtime surfaces.

## 6. Exact Command / Event

Typical events:
- incident.detected
- abnormal_behavior.detected
- incident.escalated
- runtime_legal_link_created

## 7. Authorization Boundary

Escalation and reviewed intervention require appropriate authority.

## 8. State Machine

Typical states:
- DETECTED
- TRIAGING
- ESCALATED
- HANDLED
- FAILED
- CLOSED

## 9. Transaction Boundary

Runtime incident handling must commit before downstream domain action depends on it.

## 10. Idempotency

Repeated detection for same incident key must be safe or merged.

## 11. Audit Trace

Reviewed incident override and abnormal containment must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_INCIDENT_HANDLING_FAILED
- VALIDATION_INCIDENT_LINK_INVALID
- STATE_INCIDENT_ESCALATION_FORBIDDEN

## 13. Observability

Incident posture and escalation path must remain visible.

## 14. Failure / Recovery

Runtime incident handling may link to law, health, or governance domains,
but runtime handling must not replace those canonical truths.

## 15. Acceptance Checklist

- incident runtime fixed
- abnormal runtime fixed
- escalation path fixed
