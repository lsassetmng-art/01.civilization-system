# ============================================================
# FACILITY OPERATION DASHBOARD
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.facility_ui
document_id: 3820003
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical operation dashboard for facilities.

## 2. Scope

This document covers:
- operation summary
- staffing summary
- queue status
- incident summary
- asset summary

## 3. Canonical Source Of Truth

Dashboard is projection-facing and not direct operational truth ownership.

## 4. Exact Table Set

- facility_operation_dashboard_projection
- facility_operation_dashboard_refresh
- facility_operation_alert_projection

## 5. Exact Request / Response

Dashboard reads domain projection and links to owned operation actions.

## 6. Exact Command / Event

Typical events:
- facility_dashboard_refreshed
- facility_dashboard_alert_raised

## 7. Authorization Boundary

Dashboard visibility and operation mutation authority are separate.

## 8. State Machine

Dashboard states:
- CURRENT
- STALE
- REFRESHING
- FAILED

## 9. Transaction Boundary

Dashboard refresh follows committed runtime and domain truth.

## 10. Idempotency

Repeated refresh for same revision should be safe.

## 11. Audit Trace

Reviewed dashboard-triggered privileged action must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_FACILITY_DASHBOARD_REFRESH_FAILED
- VALIDATION_FACILITY_DASHBOARD_SOURCE_MISSING

## 13. Observability

Dashboard freshness and alert posture must remain visible.

## 14. Failure / Recovery

Dashboard must not silently mutate facility truth.
It may expose operation actions, but domain writes remain domain-owned.

## 15. Acceptance Checklist

- dashboard projection fixed
- operation/action split fixed
- refresh/failure posture fixed
