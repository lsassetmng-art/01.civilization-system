# ============================================================
# CIVILIZATION AGING REVIEW AND REFRESH RULE
# ============================================================

status: aging-review-rule
layer: implementation
domain: 018.meta
subdomain: 780.request-aging-and-escalation-pack
document_id: 1201851804
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how aged cases are reviewed and refreshed safely.

## 2. Review Rule

When aging review occurs, explicitly check:

1. is the case still valid
2. is the queue state still correct
3. is the dependency state still visible
4. is the next allowed path still unchanged
5. should the case remain deferred, escalate, or stop safely

## 3. Refresh Result Values

- refreshed_keep_current_state
- refreshed_requeue_active
- refreshed_keep_deferred
- refreshed_escalate_review
- refreshed_stop_safe

## 4. Hard Rule

Refreshing a case must not silently change semantic posture.

## 5. Acceptance Checklist

- review rule fixed
- refresh result values fixed
- no-silent-semantic-change rule fixed
