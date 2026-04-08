# ============================================================
# SECRETARY SELECTION COMMON INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common secretary selection interface expectations.

required UI elements:
- secretary list or selection sheet
- current secretary highlight
- preview image
- short visible role description
- explicit selection behavior

rules:
- visible role description should remain concise
- selection must remain explicit
- deep lore should not be required for normal use
