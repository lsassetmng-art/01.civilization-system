# ============================================================
# POCKET SECRETARY NORMAL OPERATION RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the normal operation runbook for PocketSecretary.

normal checks:
- dashboard loads correctly
- local data surfaces are responsive
- pending states are visible
- notification behavior is functioning
- Persona presentation degrades safely if unavailable
- external integrations remain optional for local continuity

operator expectations:
- local-first functions should remain available
- externally confirmed state should remain distinguishable
