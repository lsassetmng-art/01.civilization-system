# ============================================================
# SECRETARY PROFILE COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines the common application-facing secretary profile concept.

common profile aspects:
- display name
- character code
- voice profile code
- visible role
- tone type
- consultation strength
- notification style

rules:
- application-facing secretary profile is distinct from deep lore profile
- secretary profile affects presentation and guidance style,
  not authority semantics
