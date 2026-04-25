# ============================================================
# CIVILIZATION PORTFOLIO REVIEW AND REBALANCE RULE
# ============================================================

status: review-rebalance-rule
layer: implementation
domain: 018.meta
subdomain: 760.request-portfolio-and-priority-pack
document_id: 1201851605
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how the request portfolio may be reviewed and rebalanced safely.

## 2. Review Objective

Portfolio review should preserve:

- canonical posture safety
- visible priority ordering
- visible queue-state logic
- no hidden semantic acceleration
- no starvation of recovery-needed cases

## 3. Review And Rebalance Rule

Portfolio review may:

- reorder within the same safe priority logic
- promote recovery-blocking items
- defer safe reference-only items
- keep governed semantic items waiting until prerequisites are satisfied

Portfolio review must not:

- silently convert deferred items into active semantic work
- bypass recovery
- bypass governed preparation

## 4. Required Review Outputs

Required outputs:

- portfolio_review_id
- reviewed_case_count
- rebalance_reason_type
- changed_priority_count
- changed_queue_state_count
- rebalance_summary_text

## 5. Hard Rule

Rebalancing changes queue handling, not canonical posture.

## 6. Acceptance Checklist

- review objective fixed
- review and rebalance rule fixed
- required review outputs fixed
- no-rebalance-equals-posture-change rule fixed
