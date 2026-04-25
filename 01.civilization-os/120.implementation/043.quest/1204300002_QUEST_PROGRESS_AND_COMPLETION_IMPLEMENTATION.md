# ============================================================
# QUEST PROGRESS AND COMPLETION
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: quest
document_id: 1204300002
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines quest instance, progress, completion, failure, and reward linkage.

## 2. Scope

This document covers:
- quest definition
- quest instance
- progress
- completion
- failure
- reward link

## 3. Canonical Source Of Truth

Quest truth remains distinct from reward grant truth and skill truth.

## 4. Exact Table Set

- quest_definition
- quest_instance
- quest_progress
- quest_completion
- quest_failure
- quest_reward_link

## 5. Exact Request / Response

Quest state change and completion are explicit operations.

## 6. Exact Command / Event

Typical events:
- quest.started
- quest.progressed
- quest.completed
- quest.failed
- quest.reward_linked

## 7. Authorization Boundary

Quest mutation must respect quest ownership and reviewed rules where applicable.

## 8. State Machine

Quest states:
- NOT_STARTED
- ACTIVE
- COMPLETED
- FAILED
- REPEATABLE_READY
- SUPERSEDED

## 9. Transaction Boundary

Completion must commit before reward grant is evaluated.

## 10. Idempotency

Repeated completion for same quest instance revision must be safe.

## 11. Audit Trace

Reviewed quest correction or forced completion must be auditable.

## 12. Error Code Binding

Typical codes:
- VALIDATION_QUEST_PROGRESS_INVALID
- STATE_QUEST_COMPLETION_FORBIDDEN
- CONFLICT_QUEST_REWARD_LINK_DUPLICATE

## 13. Observability

Quest posture and reward linkage must remain visible.

## 14. Failure / Recovery

- completion and reward grant are separate
- repeatable and non-repeatable quests must be explicit
- failed quest must preserve attempt trace

## 15. Acceptance Checklist

- quest/reward split fixed
- repeatability fixed
- failure trace fixed
