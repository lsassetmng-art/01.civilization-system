# ============================================================
# POCKET SECRETARY BACKUP RESTORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: 110.infrastructure
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines technical support for backup and restore continuity.

support areas:
- local backup generation support
- restore target selection support
- restore safety checks
- backup metadata storage support

rules:
- backup state must remain distinct from live state
- restore must be explicit
- restore support must not silently overwrite critical local intent
