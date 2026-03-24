# ============================================================
# CIVILIZATION CHARGE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for charge filings.

required_fields:
- filing_ref
- accused_scope
- charge_summary
- evidence_hash where applicable
- correlation_id

success_condition:
- charge request classified and routed safely

failure_condition:
- invalid target
- missing accused or evidence basis
- incompatible criminal handling
