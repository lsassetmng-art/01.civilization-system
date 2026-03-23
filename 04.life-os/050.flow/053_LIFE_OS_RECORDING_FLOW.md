# ============================================================
# LIFE OS RECORDING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define how user inputs become validated life records.

recording_flow:
1_input_received
2_input_classified
3_schema_validated
4_time_and_source_normalized
5_domain_record_created
6_summary_or_metric_update_triggered
7_audit_metadata_attached
8_record_persisted
9_followup_actions_evaluated

decision_points:
- is the input complete
- is correction needed
- is duplicate suppression needed
- does the input affect reminder logic
- does the input produce external sync events
