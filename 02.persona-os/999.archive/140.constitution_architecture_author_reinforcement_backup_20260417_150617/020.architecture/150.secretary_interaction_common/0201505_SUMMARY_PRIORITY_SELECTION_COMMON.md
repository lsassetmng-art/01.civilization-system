# ============================================================
# SUMMARY PRIORITY SELECTION COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common dominant summary selection logic.

rules:
- one dominant summary item should be selected at a time
- summary selection must remain state-grounded
- summary priority and summary source remain distinguishable
- urgency must not be fabricated
