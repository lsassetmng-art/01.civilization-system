# ============================================================
# POCKET SECRETARY SYNC STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents synchronization status for local-to-external
or external-to-local bounded state transitions.

states:
- local_only
- pending
- confirmed
- failed
- conflicted

requirements:
- sync result must be explicit
- failure reason should be preservable where applicable
- confirmed state must require actual confirmation
