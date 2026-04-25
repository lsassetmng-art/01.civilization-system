# ============================================================
# MAP REFLECTION AND VISUAL RUNTIME
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.world_runtime
document_id: 3980006
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines map reflection and visual runtime output as derived runtime-facing surfaces.

## 2. Scope

This document covers:
- map reflection
- visual refresh
- world visual runtime binding
- lag and failure posture

## 3. Canonical Source Of Truth

Map reflection and visual runtime are derived surfaces and not canonical world truth.

## 4. Exact Table Set

- map_reflection_runtime
- visual_runtime_projection
- map_reflection_refresh
- map_reflection_failure

## 5. Exact Request / Response

Visual runtime reads committed runtime and domain truth, then reflects it.

## 6. Exact Command / Event

Typical events:
- map_reflection_refreshed
- visual_runtime_updated
- map_reflection_failed

## 7. Authorization Boundary

Visual runtime does not grant world mutation authority.

## 8. State Machine

Reflection states:
- CURRENT
- STALE
- REFRESHING
- FAILED

## 9. Transaction Boundary

Reflection follows committed runtime and canonical state.

## 10. Idempotency

Repeated refresh for same world/runtime revision must be safe.

## 11. Audit Trace

Reviewed visual correction or repair must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_MAP_REFLECTION_FAILED
- VALIDATION_MAP_REFLECTION_SOURCE_INVALID

## 13. Observability

Reflection freshness and failure posture must remain visible.

## 14. Failure / Recovery

- map reflection is visual projection
- visual runtime must not silently mutate world truth
- stale reflection must be visible
- refresh must be reproducible from committed sources

## 15. Acceptance Checklist

- visual/runtime split fixed
- reflection freshness fixed
- no-silent-mutation rule fixed
