# ============================================================
# POCKET SECRETARY FILE STORAGE INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines support for local file and archive-related storage.

support areas:
- note attachment reference support
- archive reference support
- local export staging support
- retained local file reference support

rules:
- file reference and publication state must remain distinct
- local file existence must not imply external distribution
- retention-related metadata must be preservable
