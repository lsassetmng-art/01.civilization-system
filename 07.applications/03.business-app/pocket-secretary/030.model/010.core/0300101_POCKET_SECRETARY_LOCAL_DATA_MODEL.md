# ============================================================
# POCKET SECRETARY LOCAL DATA MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Local data model defines the primary local persistence objects
used for day-to-day secretary workflows.

local domains:
- schedules
- todos
- notes
- archive references
- user drafts
- local preferences
- notification settings
- widget state
- temporary sync state

requirements:
- each local object must have clear ownership
- local editability must be explicit
- deletion and archival must be distinguishable
- pending external state must not replace local edit history
