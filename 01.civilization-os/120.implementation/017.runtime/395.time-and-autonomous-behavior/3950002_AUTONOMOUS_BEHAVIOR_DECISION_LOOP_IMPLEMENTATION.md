# ============================================================
# AUTONOMOUS BEHAVIOR DECISION LOOP
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.autonomous
document_id: 3950002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines autonomous decision loop behavior and proposal/result split.

## 2. Scope

This document covers:
- autonomous decision case
- input snapshot
- action proposal
- action result
- abnormal escalation

## 3. Canonical Source Of Truth

Autonomous decision output is not automatically canonical truth.

## 4. Exact Table Set

- autonomous_decision_case
- autonomous_input_snapshot
- autonomous_action_proposal
- autonomous_action_result
- abnormal_behavior_escalation

## 5. Exact Request / Response

Decision loop generates proposal or approved runtime action output.

## 6. Exact Command / Event

Typical events:
- autonomous_action_proposed
- autonomous_action_applied
- abnormal_behavior_escalated

## 7. Authorization Boundary

Autonomous action may still require domain-side guard and reviewed gates.

## 8. State Machine

Decision states:
- GATHERING_INPUT
- PROPOSING
- APPROVED_FOR_APPLY
- APPLIED
- ESCALATED
- FAILED

## 9. Transaction Boundary

Proposal must be separated from final canonical mutation.

## 10. Idempotency

Repeated evaluation for same decision window must be safe.

## 11. Audit Trace

Reviewed autonomous override and escalation must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_AUTONOMOUS_DECISION_FAILED
- VALIDATION_AUTONOMOUS_INPUT_INVALID
- STATE_AUTONOMOUS_APPLY_FORBIDDEN

## 13. Observability

Decision case, proposal, and escalation posture must remain visible.

## 14. Failure / Recovery

- decision loop produces proposal or approved runtime action
- proposal must not silently rewrite canonical truth
- abnormal escalation must be explicit
- direct player intervention checkpoints must be respected

## 15. Acceptance Checklist

- proposal/result split fixed
- escalation path fixed
- no-silent-rewrite rule fixed
