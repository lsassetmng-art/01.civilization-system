# ============================================================
# WORLD UI SHELL
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.world_ui
document_id: 3810001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the canonical world-facing UI shell used for map view,
context switching, builder entry, and active-world operation entry.

## 2. Scope

This document covers:
- world map shell
- selection context panel
- summary panels
- notification projection panel
- builder entry panel
- active operation entry panel

## 3. Canonical Source Of Truth

World UI shell is projection-facing only.
It is not canonical world truth.

## 4. Exact Table Set

- world_ui_shell_state
- world_ui_context_state
- world_ui_notification_projection_ref

## 5. Exact Request / Response

World UI shell reads projection and routes user actions to
builder flow or active operation flow.

## 6. Exact Command / Event

Typical UI commands:
- world_ui.open_context
- world_ui.route_to_builder
- world_ui.route_to_operation

## 7. Authorization Boundary

UI access does not grant domain mutation authority by itself.

## 8. State Machine

Typical shell states:
- IDLE
- CONTEXT_SELECTED
- BUILDER_ENTRY_PENDING
- OPERATION_ENTRY_PENDING

## 9. Transaction Boundary

Shell state mutation is UI-local and must not silently mutate canonical truth.

## 10. Idempotency

Repeated route requests for the same target should be safe.

## 11. Audit Trace

Reviewed admin-entry routes must remain auditable where applicable.

## 12. Error Code Binding

Typical codes:
- ACCESS_WORLD_UI_ROUTE_FORBIDDEN
- VALIDATION_WORLD_UI_TARGET_MISSING

## 13. Observability

Route decisions and failed route attempts must be visible.

## 14. Failure / Recovery

- map canvas is projection-only
- builder entry must route to staged builder flow
- active operation must route to runtime-owned active entities
- shell state must not silently mutate canonical truth

## 15. Acceptance Checklist

- shell regions fixed
- projection-only rule fixed
- routing boundary fixed
