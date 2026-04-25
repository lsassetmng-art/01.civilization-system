# ============================================================
# POCKETSECRETARY ASSISTANT MEMORY FOLLOWTHROUGH ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: PocketSecretary
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: assistant-memory-followthrough-architecture

purpose:
Defines the assistant memory and follow-through boundary that should
be explicit in PocketSecretary.

memory_principle:
- assistant memory here means actionable continuity memory,
  not only conversational recall.
- the app should remember open commitments, pending plans,
  deferred requests, and upcoming obligations.

memory_categories:
- pending action memory
- schedule commitment memory
- reminder memory
- deferred follow-up memory
- unresolved decision memory

followthrough_states:
- proposed
- awaiting_confirmation
- committed
- scheduled
- reminded
- overdue
- completed
- dismissed

design_rules:
- memory state should survive beyond a single chat turn
- follow-through view should be queryable without replaying raw chat
- user must be able to review why an item still exists
- assistant may resurface relevant items, but must respect dismissal

cross-module relation:
- schedule module receives time-based commitments
- task module receives execution-oriented commitments
- reminder module receives prompt-oriented commitments
- library or supporting modules may enrich context, but do not own follow-through state

visibility_outputs:
- daily briefing
- overdue follow-through list
- today action stack
- awaiting confirmation stack
