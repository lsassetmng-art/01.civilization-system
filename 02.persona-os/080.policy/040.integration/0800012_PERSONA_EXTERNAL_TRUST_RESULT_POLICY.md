# ============================================================
# PERSONA EXTERNAL TRUST RESULT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for building and returning trust-related sync results
to external OS domains.

rule:
Permission and trust are separate.
PersonaOS must return them as separate sync semantics.
