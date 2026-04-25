# ============================================================
# WORLD MAP VIEWMODEL AND PROJECTION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: interface.world_ui
document_id: 3810002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the viewmodel and projection surface used by world map UI.

## 2. Scope

This document covers:
- tile projection
- focus state
- refresh linkage
- viewmodel freshness

## 3. Canonical Source Of Truth

Map viewmodel is derived from canonical world truth and runtime projection.

## 4. Exact Table Set

- world_map_viewmodel
- world_map_tile_projection
- world_map_focus_state
- world_map_projection_refresh

## 5. Exact Request / Response

Map reads are projection reads only.

## 6. Exact Command / Event

Typical events:
- world_map_projection_refreshed
- world_map_focus_changed

## 7. Authorization Boundary

Map projection visibility may be filtered, but projection is not mutation authority.

## 8. State Machine

Typical states:
- CURRENT
- STALE
- REFRESHING
- FAILED

## 9. Transaction Boundary

Projection refresh follows committed world/runtime truth.

## 10. Idempotency

Repeated projection refresh for same revision must be safe.

## 11. Audit Trace

Reviewed map repair or correction must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_WORLD_MAP_PROJECTION_FAILED
- VALIDATION_WORLD_MAP_SOURCE_MISSING

## 13. Observability

Projection lag and failed refresh must remain visible.

## 14. Failure / Recovery

- viewmodel is derived
- focus state is UI state, not canonical truth
- projection refresh lag must be observable
- tile projection must be reproducible from canonical sources

## 15. Acceptance Checklist

- viewmodel/projection split fixed
- freshness rule fixed
- reproducibility fixed
