# ============================================================
# POCKET SECRETARY SYNC LEGALITY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Synchronization must be legal, bounded, and state-explicit.

requirements:
- source and destination roles must be explicit
- authoritative ownership must be identifiable
- sync state must distinguish:
  - local only
  - pending
  - confirmed
  - failed
  - conflicted
- external confirmation must not be forged locally

prohibitions:
- pretending confirmed sync without confirmation
- overwriting authoritative data without legal basis
- collapsing local draft state and confirmed external state
  into one ambiguous state
