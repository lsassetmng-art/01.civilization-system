# ============================================================
# BUSINESS REPLAY CORRECTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for replay, correction, authority, and evidence handling.

required_fields:
- request_ref or correction_ref
- authority_basis
- evidence_hash where applicable
- source_record_ref
- correlation_id

compatibility_rule:
Business replay-correction interfaces must remain authority-aware and evidence-aware.
