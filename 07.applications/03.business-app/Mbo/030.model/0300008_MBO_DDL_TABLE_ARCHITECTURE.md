# ============================================================
# MBO DDL TABLE ARCHITECTURE
# PHASE 1
# ============================================================

status: canonical
application: Mbo
layer: model
owner: Boss
prepared_by: Zero

purpose:
Fixes the primary table set for Mbo DDL design phase 1.

primary_tables:
- mbo_period
- mbo_objective
- mbo_action_plan
- mbo_progress_log
- mbo_review_schedule
- mbo_review_log
- mbo_evaluation
- mbo_objective_template
- mbo_manager_comment_template
- mbo_review_cadence_preset
- mbo_interview_memo
- mbo_evidence_reference
- mbo_objective_task_link
- mbo_objective_project_link
- mbo_evaluation_calibration_record
- mbo_aggregation_export_job
- mbo_reminder_batch_job
- mbo_ERP_transmission_history
- mbo_ERP_resend_job
- mbo_reopen_request
- mbo_reopen_approval_log
- mbo_reopen_execution_log
- mbo_ERP_impact_note

design_rules:
- UUID-like id semantics are assumed at design level
- timestamps are mandatory for auditability
- lock and governance history are append-first
- external linked records remain external authorities
