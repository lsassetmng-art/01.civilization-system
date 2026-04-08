# ============================================================
# BACKGROUND SELECTION COMMON INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common background selection interface expectations.

required UI elements:
- background list or selection sheet
- current background highlight
- preview
- explicit selection behavior

rules:
- selection must remain understandable
- preview and current selection should be distinguishable
