# ============================================================
# PROJECT FLOW DEVICE SUPPORT IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation note for explicit device support.

implementation_targets:
- iPhone-compatible layout behavior
- Android-compatible layout behavior
- tablet layout behavior
- PC layout behavior
- shared action parity across all supported device types

implementation_rules:
- do not create business-feature forks by device type
- keep state and event behavior device-neutral
- keep only presentation logic device-aware
