# ============================================================
# POCKET SECRETARY SYNC ISSUE RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines the handling approach for sync-related issues.

issue categories:
- network unavailability
- timeout
- failed confirmation
- conflict
- unresolved pending

handling rules:
- preserve local user intent where safe
- distinguish failed from conflicted
- do not overwrite local state silently
- offer bounded retry or manual review path where applicable
