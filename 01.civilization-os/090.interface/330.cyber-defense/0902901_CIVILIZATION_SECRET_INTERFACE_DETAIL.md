# ============================================================
# CIVILIZATION SECRET INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for secret and key lifecycle handling.

required_fields:
- secret_code
- secret_version
- custody_scope
- rotation_reason or revocation_reason where applicable
- correlation_id

compatibility_rule:
Secret interfaces must expose explicit custody and lifecycle semantics.
