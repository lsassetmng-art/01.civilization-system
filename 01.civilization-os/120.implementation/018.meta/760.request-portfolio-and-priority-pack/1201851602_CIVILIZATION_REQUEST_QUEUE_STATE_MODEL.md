# ============================================================
# CIVILIZATION REQUEST QUEUE STATE MODEL
# ============================================================

status: queue-state-model
layer: implementation
domain: 018.meta
subdomain: 760.request-portfolio-and-priority-pack
document_id: 1201851602
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the queue state model for request cases after ledgering exists.

## 2. Canonical Queue States

Canonical queue states are:

- queued_new
- queued_active
- queued_deferred
- queued_waiting_recovery
- queued_waiting_governed_preparation
- queued_closed
- queued_stopped_safe

## 3. Queue State Rule

Each request case must have exactly one visible queue state
in addition to its lifecycle state.

## 4. Queue State Meaning

queued_new:
- intake and routing completed, active work not yet started

queued_active:
- active handling is currently appropriate

queued_deferred:
- safe postponement chosen without semantic loss

queued_waiting_recovery:
- recovery must happen before progress

queued_waiting_governed_preparation:
- governed semantic path is required before progress

queued_closed:
- request handling finished and closed

queued_stopped_safe:
- request stopped safely and should not progress unless re-entered properly

## 5. Hard Rule

Queue state must not contradict lifecycle or closure status.

## 6. Acceptance Checklist

- canonical queue states fixed
- queue state rule fixed
- queue state meaning fixed
- no-queue-lifecycle-contradiction rule fixed
