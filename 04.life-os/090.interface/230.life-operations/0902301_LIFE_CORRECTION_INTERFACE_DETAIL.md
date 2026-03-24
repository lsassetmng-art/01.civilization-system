# ============================================================
# LIFE CORRECTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for correction, replay, authority, and evidence handling.

required_fields:
- request_ref or correction_ref
- authority_basis
- evidence_hash where applicable
- source_record_ref
- correlation_id

compatibility_rule:
Life correction interfaces must remain authority-aware and evidence-aware.
