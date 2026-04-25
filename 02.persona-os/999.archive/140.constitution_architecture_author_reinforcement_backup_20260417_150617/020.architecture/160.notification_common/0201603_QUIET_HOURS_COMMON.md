# ============================================================
# QUIET HOURS COMMON
# ============================================================

status: canonical
layer: 020.architecture
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Defines common quiet-hours behavior.

rules:
- quiet hours suppress non-critical notification noise
- quiet hours do not rewrite underlying task or event state
- criticality judgment must remain explicit in app-specific layers
