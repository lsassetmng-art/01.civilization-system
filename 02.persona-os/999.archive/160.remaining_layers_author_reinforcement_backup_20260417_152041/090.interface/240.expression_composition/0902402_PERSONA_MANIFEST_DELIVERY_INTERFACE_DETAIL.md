# ============================================================
# PERSONA MANIFEST DELIVERY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for manifest projection and bundle delivery handling.

required_fields:
- manifest_code or projection_ref or delivery_ref
- target_scope
- composition_code or manifest_hash
- correlation_id

compatibility_rule:
Manifest delivery interfaces must remain manifest-aware and target-aware.
