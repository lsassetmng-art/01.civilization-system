# ============================================================
# CIVILIZATION INTRUSION DETECTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical intrusion detection record model.

model_type:
- detection truth model

primary_key:
- intrusion_detection_record_id

natural_key:
- detection_scope
- detection_ref
- correlation_id

fields:
- intrusion_detection_record_id
- detection_scope
- detection_ref
- correlation_id
- detection_status
- detection_type
- target_scope
- confidence_level
- source_state_version
- detected_at
- created_at
- updated_at

detection_status_enum:
- recorded
- validated
- false_positive
- escalated
- archived

truth_boundary:
Intrusion-detection truth belongs to CivilizationOS cyber-defense domain.
