# ============================================================
# CIVILIZATION CUSTOMS DECLARATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical customs declaration model.

model_type:
- border trade truth model

primary_key:
- customs_declaration_id

natural_key:
- declaration_scope
- declaration_ref
- correlation_id

fields:
- customs_declaration_id
- declaration_scope
- declaration_ref
- declaration_status
- declarant_scope
- shipment_ref
- goods_summary
- source_state_version
- correlation_id
- declared_at
- created_at
- updated_at

declaration_status_enum:
- submitted
- under_review
- cleared
- rejected
- amended
- archived

truth_boundary:
Customs-declaration truth belongs to CivilizationOS external-trade-aid domain.
