# PERSONA BUILDER MODEL OVERVIEW

status: implementation-ready-followup

builder_model_boundary:
- draft is mutable
- published release input is immutable after release cut
- approval decision is auditable
- visual binding references are version-aware
- builder never directly rewrites truth state without canonical apply or publish contract

core_builder_models:
- draft
- draft section
- validation result
- approval decision
- publish request
- publish result
- asset binding
- changeset
