# ============================================================
# RELATIONSHIP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Relationship defines structured interpersonal connection.

relationship_types:
- friendship
- romance
- marriage
- family_tie
- professional_relation

drivers:
- compatibility
- repeated interaction
- trust history
- emotional state
- social context

rules:
- relationship changes occur through explicit interaction events
- relationship state must be auditable
- hidden affinity overwrite is forbidden

final_rule:
Relationships evolve through explicit interaction history, not silent adjustment.
