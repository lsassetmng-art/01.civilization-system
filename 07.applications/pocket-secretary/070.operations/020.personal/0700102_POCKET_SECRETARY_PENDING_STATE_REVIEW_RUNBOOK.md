# ============================================================
# POCKET SECRETARY PENDING STATE REVIEW RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how pending states are reviewed and handled.

pending review steps:
1. identify the affected local object or request
2. identify whether pending is local-to-external or external-to-local
3. check whether confirmation is absent, failed, or conflicted
4. preserve current user-visible state
5. present retry, wait, or review path where applicable

rules:
- pending must remain visible
- unresolved pending must not be labeled confirmed
