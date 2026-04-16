# ============================================================
# LIFE SENSOR SYNC RUNTIME
# ============================================================

status: canonical-draft
system: life-os
layer: runtime
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines runtime sync handling for external device and sensor sources.

runtime responsibilities:
- fetch source data
- validate payload
- store import events
- update sync state
