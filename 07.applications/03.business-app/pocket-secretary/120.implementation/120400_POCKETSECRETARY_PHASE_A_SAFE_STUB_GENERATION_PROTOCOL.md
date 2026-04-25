# ============================================================
# POCKETSECRETARY PHASE A SAFE STUB GENERATION PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-safe-stub-generation-protocol

purpose:
Defines how PocketSecretary Phase A safe-root stub generation should begin
without touching live source trees first.

execution_policy:
- use safe output roots only at first
- default safe root is $HOME/.tmp/pocketsecretary-phase-a
- package base is com.lsam.PocketSecretary
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit remains append-only and separated

recommended_safe_root_slices:
- slice_01_briefing_query:
  - $HOME/.tmp/pocketsecretary-phase-a/slice01-briefing-query
- slice_02_follow_through_queue:
  - $HOME/.tmp/pocketsecretary-phase-a/slice02-follow-through-queue
- slice_03_conversation_action_write:
  - $HOME/.tmp/pocketsecretary-phase-a/slice03-conversation-action-write

recommended_stub_units:
- BriefingQueryController
- BriefingQueryService
- BriefingQueryValidator
- BriefingQueryRepository
- FollowThroughQueueController
- FollowThroughQueueService
- FollowThroughQueueValidator
- FollowThroughQueueRepository
- ConversationActionController
- ConversationActionService
- ConversationActionRepository
- PocketSecretaryAuditPort
- DatabasePocketSecretaryAuditAdapter

required_pre-relocation_checks:
- DTO names still match fixed payload documents
- briefing and queue fields still match planning documents
- conversation-to-action seam still preserves action history and audit separation
- no destructive edits are introduced
- generated tree stays isolated until review completion
