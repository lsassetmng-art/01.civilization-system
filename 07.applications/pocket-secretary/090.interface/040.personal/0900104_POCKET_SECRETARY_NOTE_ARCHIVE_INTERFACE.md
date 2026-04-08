# ============================================================
# POCKET SECRETARY NOTE ARCHIVE INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the user interface for note handling,
memo review, archive access, and retained item retrieval.

required UI elements:
- note list
- note editor
- archive list or retrieval surface
- archive state indicator
- retention-aware retrieval controls

rules:
- archive must not be visually confused with deletion
- note privacy-sensitive content must not be overexposed by default
