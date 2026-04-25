# ============================================================
# ITEM MASTER AND ITEM INSTANCE
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: item
document_id: 1204400002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines item master, variants, and per-instance state.

## 2. Scope

This document covers:
- item master
- item variant
- item instance
- condition
- expiration

## 3. Canonical Source Of Truth

Item master truth is distinct from item instance truth and inventory truth.

## 4. Exact Table Set

- item_master
- item_variant
- item_instance
- item_condition
- item_expiration

## 5. Exact Request / Response

Item definition and instance mutation are explicit operations.

## 6. Exact Command / Event

Typical events:
- item_master.created
- item_variant.created
- item_instance.created
- item_instance.updated

## 7. Authorization Boundary

Item master mutation and instance mutation require item-side authority.

## 8. State Machine

Instance states:
- CREATED
- ACTIVE
- CONSUMED
- EXPIRED
- DESTROYED

## 9. Transaction Boundary

Instance mutation must not silently rewrite master definition.

## 10. Idempotency

Repeated instance creation or state change for same identity must be safe.

## 11. Audit Trace

Master and instance correction must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_ITEM_MASTER_INVALID
- VALIDATION_ITEM_INSTANCE_INVALID
- STATE_ITEM_INSTANCE_MUTATION_FORBIDDEN

## 13. Observability

Master/variant/instance lineage must remain visible.

## 14. Failure / Recovery

- master and instance must be separate
- consumable and durable items must be distinguishable
- instance state must not overwrite master definition

## 15. Acceptance Checklist

- master/instance split fixed
- variant support fixed
- no-master-overwrite rule fixed
