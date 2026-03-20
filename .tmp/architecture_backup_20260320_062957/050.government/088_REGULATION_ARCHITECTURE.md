# ============================================================
# REGULATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Regulation enforces rules on economy and society.

rules:
- must derive from policy/law
- enforcement must be explicit

event_flow:
- regulation_created
- enforcement_triggered

final_rule:
Regulation must not act without explicit authority.
