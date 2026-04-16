# ============================================================
# EXPENSE RESUME PROHIBITIONS NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines what should be prohibited by default when resuming the current
ExpenseSettlement design set.

resume_prohibited_by_default:
- broad concept redesign with no explicit reason
- deleting detail docs because summary docs exist
- collapsing approval / finance / ERP / settlement into one state concept
- collapsing candidate / template / formal object meanings
- bypassing the implementation gate
- changing canonical identifiers into localized-only meanings
- treating summary docs as replacements for policy detail docs

resume_allowed_by_default:
- exact value tuning
- exact matrix tuning
- label catalog completion
- safe duplicate-summary cleanup
- narrow policy refinement inside already-fixed frame

prohibition_rule:
If a future session cannot explain why a broad change is needed,
the change should not be made.

