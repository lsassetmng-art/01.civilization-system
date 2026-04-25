# ============================================================
# MAP SUPPORTING STRUCTURE AND LAYER BINDING
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: map
document_id: 1203900002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines map-supporting structure and layer binding.

## 2. Scope

This document covers:
- map structure
- spatial layer binding
- support-layer visibility
- non-canonical visual support

## 3. Canonical Source Of Truth

Map-support layers are supporting structures and not primary domain truth.

## 4. Exact Table Set

- map_support_structure
- map_layer_binding
- map_layer_visibility_rule
- map_support_revision

## 5. Exact Request / Response

Layer binding and visibility rule changes are explicit operations.

## 6. Exact Command / Event

Typical events:
- map_layer.bound
- map_layer.visibility_changed
- map_support.revised

## 7. Authorization Boundary

Map support mutation requires map-side or reviewed operator authority.

## 8. State Machine

Layer states:
- BOUND
- VISIBLE
- HIDDEN
- SUPERSEDED

## 9. Transaction Boundary

Layer-binding changes must commit before visual projection refresh.

## 10. Idempotency

Repeated bind or visibility change for same revision must be safe.

## 11. Audit Trace

Reviewed support-layer correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_MAP_LAYER_BINDING_INVALID
- ACCESS_MAP_LAYER_MUTATION_FORBIDDEN

## 13. Observability

Layer posture and support revision must remain visible.

## 14. Failure / Recovery

Map layer binding is visual/runtime support
and not domain truth ownership.

## 15. Acceptance Checklist

- support/domain split fixed
- layer binding fixed
- visibility rule fixed
