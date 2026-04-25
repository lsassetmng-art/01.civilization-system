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

# EXACT READY INTERFACE REINFORCEMENT

status_extension: author-reviewed-with-interface-reinforcement
reinforced_at: 20260417_152041
domain: interface

minimum_interface_requirements:
- define request or input shape
- define response or output shape
- define required identifiers
- define status or result family
- define error family where applicable

mandatory_interface_controls:
- no ambiguous field meaning
- no missing identifier in terminal result
- no undocumented reject family

minimum_interface_acceptance_targets:
- valid input and output example
- reject or error example
- result code example where applicable
