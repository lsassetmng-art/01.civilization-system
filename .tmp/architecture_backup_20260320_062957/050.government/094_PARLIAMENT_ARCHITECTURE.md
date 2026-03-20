# ============================================================
# PARLIAMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Parliament is the lightweight legislative approval structure.

applicable_scope:
- democracy by default
- limited or bypassed in other nation types

structure:
- parliament_id
- nation_id
- total_seats
- bloc_distribution
- approval_threshold

functions:
- law approval
- policy blocking
- legitimacy balancing
- dissolution events

events:
- parliament_deadlock
- law_rejected
- dissolution
- re_election

principles:
- lightweight model
- no fully simulated legislative bureaucracy
- sufficient to constrain leadership power
