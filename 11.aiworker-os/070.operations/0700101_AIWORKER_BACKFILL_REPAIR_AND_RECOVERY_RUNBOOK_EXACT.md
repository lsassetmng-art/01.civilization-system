# ============================================================
# AIWORKER BACKFILL REPAIR AND RECOVERY RUNBOOK EXACT
# ============================================================

status: exact-operations
system: AiworkerOS
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
Freeze the operational runbook direction for backfill, repair, and recovery.

runbook_families:
- code-seed backfill
- history rebuild backfill
- missing outbox redelivery recovery
- stuck intake recovery
- audit gap investigation
- replay lineage repair
- restricted/privileged review escalation recovery

runbook_principles:
- additive first
- dry-run first
- scope declaration mandatory
- target-row identification mandatory
- result log mandatory
- rollback or compensating path mandatory
- review with 佐藤(DB担当) mandatory for SQL-affecting repair steps

controlled_backfill_direction:
- prefer controlled function path when canonical state could change
- use direct maintenance SQL only for metadata repair, delivery metadata, or clearly noncanonical repairs
- direct rewrite of canonical worker truth outside approved path is prohibited

stuck_intake_recovery_examples:
- RECEIVED too long without VALIDATING
- READY_TO_APPLY without execution progress
- APPLYING without terminal outcome due to interruption

event_delivery_recovery_examples:
- event emitted but delivery metadata missing
- delivery failed after canonical mutation succeeded
- result needs re-emission without remutation

repair_runbook_minimum_sections:
- incident identifier
- scope and target rows
- precheck query set
- dry-run logic
- execution logic
- postcheck query set
- rollback or compensating action
- audit note and approver

hard_rules:
- recovery must preserve canonical boundary
- repair must not become silent canonical rewrite
- backfill must be auditable and replay-safe
