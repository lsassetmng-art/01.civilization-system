# ============================================================
# CIVILIZATION REGISTRY ENTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical registry entry model used across CivilizationOS.

model_type:
- canonical registry model

primary_key:
- registry_entry_id

natural_key:
- registry_domain
- registry_code

fields:
- registry_entry_id
- registry_domain
- registry_code
- registry_name
- registry_status
- owner_domain
- source_of_truth_domain
- description
- metadata_json
- created_at
- updated_at

registry_status_enum:
- active
- inactive
- deprecated
- archived

truth_boundary:
Registry entry metadata may be canonical in CivilizationOS,
but referenced subordinate truth must remain external when applicable.

relation_rule:
registry_domain + registry_code must remain unique inside the same registry namespace.
