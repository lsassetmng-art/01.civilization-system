# ============================================================
# PERSONA RUNTIME SESSION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

runtime_rules:
one visible host-owned render lifecycle maps to one runtime session
session disposal must be explicit
disposed sessions must not resume
