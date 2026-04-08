# ============================================================
# PERSONA ROOT RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: core
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior around persona_root.

runtime_rules:
persona_root is the canonical runtime anchor
root-level truth references must remain coherent
runtime must reject mutation paths that bypass canonical truth domains
root-level mutation must remain explicit and auditable
