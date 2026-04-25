# ============================================================
# CIVILIZATION REQUEST REPLAY AND HISTORY RULE
# ============================================================

status: replay-rule
layer: implementation
domain: 018.meta
subdomain: 750.request-lifecycle-and-ledger-pack
document_id: 1201851504
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how past request handling may be replayed or reread safely.

## 2. Replay Objective

Replay is allowed only to support:

- historical understanding
- traceability
- clarification of how a request ended
- safe continuation from a past unresolved or handed-off state

## 3. Replay Rule

When replaying past request history:

1. anchor to the current canonical surface first
2. treat old request history as case history, not as automatic current authority
3. reclassify current intent if new action is now intended

## 4. Canonical Replay Results

- replay_for_reference_only
- replay_for_unresolved_continuation
- replay_requires_reanchor_before_new_action

## 5. Hard Rule

Past request replay must not bypass current intake, recovery, or governed change rules.

## 6. Acceptance Checklist

- replay objective fixed
- replay rule fixed
- replay result values fixed
- no-bypass-via-history rule fixed
