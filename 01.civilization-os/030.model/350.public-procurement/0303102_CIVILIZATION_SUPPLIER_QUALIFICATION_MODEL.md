# ============================================================
# CIVILIZATION SUPPLIER QUALIFICATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical supplier qualification model.

model_type:
- supplier governance truth model

primary_key:
- supplier_qualification_id

natural_key:
- qualification_scope
- supplier_scope
- qualification_code

fields:
- supplier_qualification_id
- qualification_scope
- supplier_scope
- qualification_code
- qualification_status
- qualification_level
- qualification_basis
- effective_from
- effective_until
- created_at
- updated_at

qualification_status_enum:
- pending
- approved
- active
- suspended
- revoked
- expired
- archived

truth_boundary:
Supplier-qualification truth belongs to CivilizationOS public-procurement domain.
