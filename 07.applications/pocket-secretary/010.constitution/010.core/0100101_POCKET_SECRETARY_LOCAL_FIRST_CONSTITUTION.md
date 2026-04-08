# ============================================================
# POCKET SECRETARY LOCAL FIRST CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
PocketSecretary shall be local-first.

definition:
Core user functions must remain usable
without requiring continuous network connectivity.

Local-first means:

- local state is primary for personal interaction
- local storage is the primary operating surface
- network services are extensions, not prerequisites
- temporary external failure must not collapse core use

requirements:
- schedule, todo, memo, and secretary interaction
  should remain locally operable where designed
- cached data must be clearly distinguishable
  from externally confirmed data
- local writes must not silently disappear
- connectivity absence must degrade gracefully

prohibitions:
- network-only design for basic secretary functions
- forced external dependency for routine local actions
- silent discard of local user operations
