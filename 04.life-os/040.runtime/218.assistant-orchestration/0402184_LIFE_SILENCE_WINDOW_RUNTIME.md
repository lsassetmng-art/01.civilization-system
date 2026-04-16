# ============================================================
# LIFE SILENCE WINDOW RUNTIME
# ============================================================

status: canonical-draft
system: life-os
layer: runtime
domain: assistant-orchestration
owner: Boss
prepared_by: Zero

purpose:
Defines runtime handling of silence windows in LifeOS.

runtime responsibilities:
- suppress non-urgent reminders during silence windows
- retain deferred candidates
- release candidates after silence window expires
