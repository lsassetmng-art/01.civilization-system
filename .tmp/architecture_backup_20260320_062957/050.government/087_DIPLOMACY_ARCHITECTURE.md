# ============================================================
# DIPLOMACY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Diplomacy manages inter-nation relations.

types:
- alliance
- treaty
- sanction

rules:
- agreements must be explicit
- violations must be logged

event_flow:
- treaty_proposed
- treaty_signed
- treaty_broken

final_rule:
Diplomacy must be explicit and traceable.
