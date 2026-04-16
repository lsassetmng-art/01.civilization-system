# ============================================================
# POCKET SECRETARY STATE HANDLING IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines implementation guidance for state handling.

state classes to implement explicitly:
- local_only
- pending
- confirmed
- failed
- conflicted
- offline

implementation rules:
- state must not be inferred ambiguously
- failed must remain failed until resolved
- pending must remain pending until confirmation or failure
- local optimistic display must not overwrite actual confirmed state semantics
