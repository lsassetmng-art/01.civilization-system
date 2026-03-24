# ============================================================
# CIVILIZATION CROSS DOMAIN RELATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical model for cross-domain relations.

model_type:
- relation model

primary_key:
- cross_domain_relation_id

natural_key:
- source_domain
- source_entity_id
- target_domain
- target_entity_id
- relation_type

fields:
- cross_domain_relation_id
- source_domain
- source_entity_id
- target_domain
- target_entity_id
- relation_type
- relation_status
- relation_strength
- source_truth_domain
- target_truth_domain
- valid_from
- valid_until
- created_at
- updated_at

relation_status_enum:
- active
- inactive
- suspended
- expired

truth_boundary:
This model describes relation metadata.
It must not silently claim ownership of source or target truth.
