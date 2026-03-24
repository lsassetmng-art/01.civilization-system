# ============================================================
# CIVILIZATION LABOR DISPUTE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for labor disputes.

required_fields:
- dispute_ref or case_ref
- employer_scope
- worker_group_scope where applicable
- evidence basis
- correlation_id

compatibility_rule:
Labor-dispute interfaces must remain worker-aware and evidence-aware.
