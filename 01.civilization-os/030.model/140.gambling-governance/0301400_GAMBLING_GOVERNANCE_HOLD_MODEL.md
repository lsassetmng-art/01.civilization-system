# ============================================================
# GAMBLING GOVERNANCE HOLD MODEL
# ============================================================

status: draft-for-canonical-update
system: civilization-os
layer: model
domain: gambling-governance
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
Formal platform hold record for suspending progression, settlement, release,
or closure of a gambling-related process.

hold_reasons:
- dispute
- anomaly review
- operator review
- safety escalation
- regulatory verification
- settlement mismatch

core_fields:
- hold identity
- source lineage
- hold reason
- hold status
- release status
- created_at
- updated_at
