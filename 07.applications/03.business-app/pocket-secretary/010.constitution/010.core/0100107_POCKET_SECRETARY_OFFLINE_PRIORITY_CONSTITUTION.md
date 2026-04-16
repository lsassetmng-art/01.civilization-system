# ============================================================
# POCKET SECRETARY OFFLINE PRIORITY CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Offline usability shall be treated as a first-class design condition.

requirements:
- local interaction design must assume temporary disconnection
- UI must distinguish offline, pending, and confirmed states
- user work must be preservable during disconnection
- reconnection must not rewrite intent silently

prohibitions:
- designing basic workflows as always-online only
- silent loss of offline edits
- implicit submission upon reconnect without bounded rules
