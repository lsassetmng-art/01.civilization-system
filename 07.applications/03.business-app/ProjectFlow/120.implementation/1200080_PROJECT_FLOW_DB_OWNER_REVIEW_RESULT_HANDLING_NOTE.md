# ============================================================
# PROJECT FLOW DB OWNER REVIEW RESULT HANDLING NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines how DB-owner review results should be handled.

handling_rules:
- pass result may unlock DB-phase planning
- partial result may unlock only explicitly confirmed areas
- hold result must keep unresolved DB items blocked
- confirmed DB review outputs should be reflected into local notes explicitly
- unresolved items must remain visible and not be silently assumed resolved
