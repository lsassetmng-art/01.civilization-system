# ============================================================
# BUILDER PUBLISH AND SUPERSEDE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: 022.builder
document_id: 1200220009
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact publish handoff and supersede behavior shared across builder families.

## 2. Scope

This document covers:
- publish artifact
- publish guard
- activation handoff
- supersede linkage

## 3. Canonical Source Of Truth

Publish artifact and supersede lineage truth is defined here.

## 4. Exact Table Set

- builder_publish_artifact
- builder_publish_guard
- builder_activation_link
- builder_supersede_link

## 5. Exact Request / Response

Publish and supersede are explicit builder-side operations.

## 6. Exact Command / Event

Typical commands:
- builder_draft.publish
- builder_artifact.activate
- builder_artifact.supersede

Typical events:
- builder_artifact.published
- builder_artifact.activated
- builder_artifact.superseded

## 7. Authorization Boundary

Publish and supersede require reviewed action where domain policy demands it.

## 8. State Machine

Publish handoff must remain distinct from staged draft editing states.

## 9. Transaction Boundary

Publish creates immutable artifact before downstream activation.

## 10. Idempotency

Repeated publish request for same approved revision must be safe or conflict-rejected.

## 11. Audit Trace

Publish, activate, and supersede must be auditable.

## 12. Error Code Binding

Typical codes:
- STATE_BUILDER_NOT_APPROVED_FOR_PUBLISH
- CONFLICT_BUILDER_SUCCESSOR_ALREADY_EXISTS
- ACCESS_BUILDER_ACTIVATION_FORBIDDEN

## 13. Observability

Published artifact lineage must be operator-visible.

## 14. Failure / Recovery

- publish creates immutable artifact
- publish transfers approved draft into domain-owned active state
- supersede must link predecessor and successor
- destructive overwrite is prohibited

## 15. Acceptance Checklist

- publish artifact fixed
- activation handoff fixed
- supersede linkage fixed
- destructive overwrite prohibition fixed
