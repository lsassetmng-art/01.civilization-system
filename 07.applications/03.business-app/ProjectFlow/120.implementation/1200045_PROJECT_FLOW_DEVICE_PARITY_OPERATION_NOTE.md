# ============================================================
# PROJECT FLOW DEVICE_PARITY_OPERATION_NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-detail operation note for keeping parity across device types.

operation_points:
- keep actions device-neutral in state and event layers
- keep entitlement guards device-neutral
- keep localization behavior device-neutral
- keep export and customer-material generation device-neutral
- allow separate layout shells for phone,
  tablet,
  and PC only at presentation layer

warning_points:
- do not create hidden feature differences by device type
- do not place customer-facing generation only on PC
- do not place ERP-related request actions only on non-phone layouts
