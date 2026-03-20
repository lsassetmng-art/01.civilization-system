# ============================================================
# ELECTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Election selects leadership through citizen voting.

purpose:
- provide legitimacy
- transfer authority

rules:
- voting must be explicit
- results must be immutable after finalization

event_flow:
- election_started
- vote_cast
- vote_counted
- result_published

final_rule:
Election must be auditable and tamper-resistant.
