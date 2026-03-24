# ============================================================
# CIVILIZATION PERMISSION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for permission-governed access.

required_fields:
- permission_code
- permission_version
- grantee_scope
- target_interface_code
- correlation_id

compatibility_rule:
Permission interfaces must remain version-aware and revocable.
