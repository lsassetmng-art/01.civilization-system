# ============================================================
# EVENT PIPELINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Event pipeline is the ordered processing path of an event from intake to completion.

pipeline_stages:
- intake
- schema_validation
- permission_validation
- law_validation_if_applicable
- handler_dispatch
- domain_processing
- downstream_event_emission
- notification_request
- logging_finalize

rules:
- stage order must be explicit
- events may not skip mandatory validation stages
- partial execution without explicit policy is forbidden
- failed stage prevents later stage execution

failure_behavior:
- reject invalid events
- log rejection
- emit explicit failure event if defined
- no silent continuation

final_rule:
Every runtime event must traverse an explicit, ordered, non-bypassable pipeline.
