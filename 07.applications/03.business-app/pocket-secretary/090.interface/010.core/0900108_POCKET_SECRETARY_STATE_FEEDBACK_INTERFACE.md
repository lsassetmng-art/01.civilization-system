# ============================================================
# POCKET SECRETARY STATE FEEDBACK INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines how PocketSecretary presents state feedback to the user.

state classes:
- local_only
- pending
- confirmed
- failed
- conflicted
- offline

rules:
- state feedback must be understandable and explicit
- critical ambiguity must not be hidden
- pending must remain visibly pending
- failed must remain visibly failed until resolved
