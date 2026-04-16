# ============================================================
# POCKET SECRETARY NOTE ARCHIVE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines runtime behavior for notes, memo handling,
archive movement, retrieval, and local persistence continuity.

rules:
- note save must preserve local intent
- archive move must not be treated as deletion
- retrieval behavior must respect retention state
