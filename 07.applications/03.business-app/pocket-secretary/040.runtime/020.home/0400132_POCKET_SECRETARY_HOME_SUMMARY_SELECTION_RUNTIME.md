# ============================================================
# POCKET SECRETARY HOME SUMMARY SELECTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for score-based dominant summary selection.

runtime sequence:
1. collect candidate summary sources
2. apply baseline score by candidate type
3. apply tie-break rules
4. apply suppression rules
5. choose one dominant candidate
6. render secretary-specific wording

rules:
- candidates must reflect real current state
- quiet hours suppress non-urgent candidates
- selected summary remains advisory or informational only
