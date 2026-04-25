# ============================================================
# FACILITY UI SHELL
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.facility_ui
document_id: 3820001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the common shell used by facility family interfaces.

## 2. Scope

This document covers:
- facility list
- detail header
- operation dashboard
- staffing
- inventory/assets
- schedule/queue
- incidents/notices
- history/audit

## 3. Canonical Source Of Truth

Facility UI shell is interface structure only and not domain truth ownership.

## 4. Exact Table Set

- facility_ui_shell_state
- facility_ui_tab_state
- facility_ui_context_ref

## 5. Exact Request / Response

Facility shell reads facility projections and routes writes to domain-owned flows.

## 6. Exact Command / Event

Typical UI commands:
- facility_ui.open
- facility_ui.switch_tab
- facility_ui.open_operation_panel

## 7. Authorization Boundary

Facility shell access and domain mutation authority are separate.

## 8. State Machine

Typical shell states:
- LIST
- DETAIL
- OPERATION_PANEL
- INCIDENT_PANEL
- HISTORY_PANEL

## 9. Transaction Boundary

Shell state must not directly own canonical write truth.

## 10. Idempotency

Repeated open or tab-switch should be safe.

## 11. Audit Trace

Reviewed facility operation entry must remain auditable.

## 12. Error Code Binding

Typical codes:
- ACCESS_FACILITY_VIEW_FORBIDDEN
- VALIDATION_FACILITY_CONTEXT_MISSING

## 13. Observability

Tab state and route state must remain visible.

## 14. Failure / Recovery

- shell is common across facility families
- family-specific detail must use extension slots
- shell must not directly own canonical write truth
- builder pages and operation pages must remain separated

## 15. Acceptance Checklist

- common shell fixed
- extension-slot rule fixed
- builder/operation split fixed
