# ============================================================
# STREAMING RIGHTS PUBLISH INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for rights, reuse, and publish lifecycle handling.

required_fields:
- grant_code or permission_code or publish_ref or reuse_ref
- authority_basis where applicable
- source_asset_ref or target_platform_scope
- correlation_id

compatibility_rule:
Streaming rights-publish interfaces must remain authority-aware and platform-aware.
