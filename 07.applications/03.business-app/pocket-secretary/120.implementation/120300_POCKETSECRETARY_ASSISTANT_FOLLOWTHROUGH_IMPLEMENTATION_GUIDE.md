# ============================================================
# POCKETSECRETARY ASSISTANT FOLLOWTHROUGH IMPLEMENTATION GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: assistant-followthrough-implementation-guide

purpose:
Provides the first implementation-oriented guide for the newly
clarified differentiator in PocketSecretary.

implementation_priority:
- Phase A should begin from action continuity, not from generic chat expansion.
- Daily briefing and action commitment are the best first implementation slice.

recommended_phase_a_entry:
- fix row families for assistant action timeline and briefing items
- freeze action-plan and daily-briefing DTOs
- separate conversation interpretation from committed follow-through persistence
- create slice order:
  - action plan propose
  - action plan confirm
  - daily briefing query
  - overdue review and quick actions

hard_rules:
- keep conversation log separate from active action timeline rows
- keep audit separate from active follow-through state
- do not mix reminder state with raw chat state
- do not collapse confirmation-needed items into committed items prematurely

implementation_readiness_signal:
- once DDL, DTO, stub boundaries, and slice order are frozen,
  PocketSecretary can follow the same bundled Phase A pattern used successfully in NameCardManager.
