# ============================================================
# DEPLOYMENT AND LOGISTICS BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: war
document_id: 1201600003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines deployment truth and logistics truth as separate but linked war surfaces.

## 2. Scope

This document covers:
- deployment order
- target binding
- logistics line
- supply snapshot
- deployment result
- logistics failure

## 3. Canonical Source Of Truth

Deployment and logistics are distinct war truths.

## 4. Exact Table Set

- deployment_order
- deployment_target
- logistics_line
- logistics_supply_snapshot
- deployment_result
- logistics_failure

## 5. Exact Request / Response

Deployment and logistics actions are explicit war operations.

## 6. Exact Command / Event

Typical commands:
- deployment.issue_order
- deployment.execute
- logistics.bind_line
- logistics.report_failure

Typical events:
- deployment.ordered
- deployment.executed
- logistics.line_bound
- logistics.failure_reported

## 7. Authorization Boundary

Deployment and logistics mutation require war operational authority.

## 8. State Machine

Deployment states:
- ORDERED
- MOVING
- DEPLOYED
- FAILED
- WITHDRAWN

Logistics states:
- PLANNED
- ACTIVE
- DEGRADED
- FAILED
- RESTORED

## 9. Transaction Boundary

Deployment result and logistics result must remain separately committed.

## 10. Idempotency

Repeated deployment execution for same order revision must be safe or conflict-rejected.

## 11. Audit Trace

Deployment changes and logistics repair must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_DEPLOYMENT_TARGET_INVALID
- STATE_LOGISTICS_BINDING_FORBIDDEN
- RUNTIME_LOGISTICS_FAILURE_REPORTED

## 13. Observability

Deployment posture and logistics posture must remain separately visible.

## 14. Failure / Recovery

- deployment and logistics are separate truths
- deployment success must not assume logistics sufficiency
- logistics failure may degrade operation without mutating declaration truth

## 15. Acceptance Checklist

- deployment/logistics split fixed
- separate states fixed
- no-hidden-mutation rule fixed
