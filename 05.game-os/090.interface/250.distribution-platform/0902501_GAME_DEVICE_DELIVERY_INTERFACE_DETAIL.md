# ============================================================
# GAME DEVICE DELIVERY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for device registration and delivery lifecycle handling.

required_fields:
- device_code or grant_code or license_code
- package_code where applicable
- entitlement basis where applicable
- attestation_summary where applicable
- correlation_id

compatibility_rule:
Game device-delivery interfaces must remain device-aware and entitlement-aware.
