# ============================================================
# CIVILIZATION CONTRACT INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for external contract registration and review.

required_fields:
- contract_code
- contract_version
- schema_hash
- compatibility_status
- producer_scope
- consumer_scope

compatibility_rule:
Cross-boundary contract interfaces must expose explicit compatibility semantics.
