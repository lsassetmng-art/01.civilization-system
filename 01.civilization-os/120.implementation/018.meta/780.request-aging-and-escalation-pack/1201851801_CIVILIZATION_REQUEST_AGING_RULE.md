# ============================================================
# CIVILIZATION REQUEST AGING RULE
# ============================================================

status: aging-rule
layer: implementation
domain: 018.meta
subdomain: 780.request-aging-and-escalation-pack
document_id: 1201851801
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how request cases age over time without losing canonical control.

## 2. Aging Objective

Aging control must preserve:

- visibility of long-waiting cases
- distinction between safe deferment and stale neglect
- no silent semantic drift during waiting
- explicit review points for old queued cases

## 3. Canonical Aging States

Canonical aging states are:

- fresh
- aging_review_due
- stale_review_required
- escalated_for_attention

## 4. Aging Rule

Every non-closed request case should have one explicit aging state
in addition to queue state and lifecycle state.

## 5. Hard Rule

Time passage alone must not silently reactivate or close a request.

## 6. Acceptance Checklist

- aging objective fixed
- canonical aging states fixed
- aging rule fixed
- no-time-based-silent-reactivation rule fixed
