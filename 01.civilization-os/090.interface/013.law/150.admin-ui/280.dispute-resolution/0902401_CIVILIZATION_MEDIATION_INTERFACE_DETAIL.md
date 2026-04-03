# ============================================================
# CIVILIZATION MEDIATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for mediation access.

required_fields:
- source_dispute_ref
- mediator_scope
- settlement_summary where applicable
- correlation_id

compatibility_rule:
Mediation interfaces must expose explicit settlement semantics.
