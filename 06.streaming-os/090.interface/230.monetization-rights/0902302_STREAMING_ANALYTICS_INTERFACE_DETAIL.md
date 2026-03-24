# ============================================================
# STREAMING ANALYTICS INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for analytics and contract lifecycle handling.

required_fields:
- snapshot_ref or profile_code
- target_scope
- source_version_code where applicable
- schema basis where applicable
- correlation_id

compatibility_rule:
Streaming analytics interfaces must remain schema-aware and compatibility-aware.
