# ============================================================
# PERSONA CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Persona core is the persistent human-character foundation used by player systems.

components:
- identity
- memory linkage
- growth linkage
- state linkage

rules:
- persona core is authoritative identity anchor
- dependent systems reference persona core but do not overwrite it directly

final_rule:
Persona core is a stable anchor, not a mutable shortcut.
