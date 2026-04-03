# ============================================================
# CIVILIZATION CLASSIFICATION LABEL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical classification label model.

model_type:
- classification truth model

primary_key:
- classification_label_id

natural_key:
- label_scope
- label_code
- label_version

fields:
- classification_label_id
- label_scope
- label_code
- label_version
- label_status
- confidentiality_level
- handling_rule_summary
- effective_from
- effective_until
- created_at
- updated_at

label_status_enum:
- active
- superseded
- revoked
- expired

truth_boundary:
Classification-label truth belongs to CivilizationOS records-governance domain.
