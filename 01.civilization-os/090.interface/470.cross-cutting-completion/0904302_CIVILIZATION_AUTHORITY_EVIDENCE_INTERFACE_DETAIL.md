# ============================================================
# CIVILIZATION AUTHORITY EVIDENCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for authority, evidence,
compatibility, and audit reconstruction handling.

required_fields:
- decision_ref or linkage_ref or bundle_ref
- authority_basis
- evidence_hash where applicable
- source_version_code where applicable
- correlation_id

compatibility_rule:
Authority-evidence interfaces must remain authority-aware and compatibility-aware.
