# ============================================================
# PERSONA ROOT INTERFACE
# ============================================================

status: canonical
layer: interface
domain: core
system: persona-os
owner: Boss
prepared_by: Zero

interface_examples:
PersonaRootReadRequest
PersonaRootReadResponse
PersonaRootMutationResult

rule:
root-level interfaces must remain explicit and auditable
