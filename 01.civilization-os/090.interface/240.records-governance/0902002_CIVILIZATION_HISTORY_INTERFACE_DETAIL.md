# ============================================================
# CIVILIZATION HISTORY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for snapshots and evidence bundles.

required_fields:
- snapshot_scope
- source_lineage
- source_state_version
- snapshot_hash where applicable
- correlation_id

compatibility_rule:
History interfaces must expose explicit lineage semantics.
