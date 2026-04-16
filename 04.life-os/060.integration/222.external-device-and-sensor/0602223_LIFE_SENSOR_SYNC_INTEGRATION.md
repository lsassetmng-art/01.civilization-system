# ============================================================
# LIFE SENSOR SYNC INTEGRATION
# ============================================================

status: canonical-draft
system: life-os
layer: integration
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines sync integration for sensor sources in LifeOS.

integrations:
- periodic sync
- retry operation
- sync-state persistence
