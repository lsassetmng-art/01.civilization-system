# ============================================================
# CIVILIZATION COMPATIBILITY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for compatibility handling.

policy_rules:
- compatible contracts may proceed normally
- limited compatibility must remain explicit and bounded
- incompatible contracts must not proceed silently
- missing version semantics must not be guessed

compatibility_handling:
- compatible -> proceed
- limited -> proceed with bounded handling
- incompatible -> reject or isolate
