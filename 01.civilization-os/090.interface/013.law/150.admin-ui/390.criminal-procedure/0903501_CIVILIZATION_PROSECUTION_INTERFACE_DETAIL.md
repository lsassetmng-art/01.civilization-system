# ============================================================
# CIVILIZATION PROSECUTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for prosecution and parole review.

required_fields:
- review_ref
- source_filing_ref or source_sentence_ref
- reviewer_scope
- review_result where applicable
- correlation_id

compatibility_rule:
Prosecution interfaces must remain filing-aware and sentence-aware.
