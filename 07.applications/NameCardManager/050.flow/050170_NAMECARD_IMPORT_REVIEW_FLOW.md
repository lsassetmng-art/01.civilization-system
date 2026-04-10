# ============================================================
# NAMECARD IMPORT REVIEW FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines review flow after import.

flow:
- app opens import result summary
- user reviews duplicate candidates
- user reviews company grouping candidates
- user reviews image warnings
- user reviews incomplete data
- app suggests next actions and follow-up tasks

