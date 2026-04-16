# ============================================================
# MBO DDL VALIDATION CHECKLIST
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero
reviewer: Sato

purpose:
Defines the formal checklist for validating
the Mbo database design and SQL packs.

# ============================================================
# 1. EXECUTION ORDER CHECK
# ============================================================

execution_order_check:
- confirm phase1 base tables execute successfully
- confirm phase2 constraints/indexes/views execute successfully
- confirm phase3 triggers/RLS/views execute successfully
- confirm phase4 seed/validation/ops SQL execute successfully
- confirm integrated SQL also executes in clean environment
- confirm phased execution and integrated execution do not diverge in structure

# ============================================================
# 2. TABLE STRUCTURE CHECK
# ============================================================

table_structure_check:
- confirm all planned tables exist
- confirm all primary keys exist
- confirm all mandatory columns exist
- confirm timestamp columns exist where required
- confirm append-only log tables do not incorrectly require updated_at
- confirm governance tables exist for reopen and ERP impact handling

target_tables:
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
- mbo_erp_transmission_history
- mbo_erp_resend_job
- mbo_reopen_request
- mbo_reopen_approval_log
- mbo_reopen_execution_log
- mbo_erp_impact_note

# ============================================================
# 3. CONSTRAINT CHECK
# ============================================================

constraint_check:
- confirm unique(company_id, period_code) works
- confirm unique(objective_id) to evaluation 1:1 works
- confirm unique(objective_id, step_no) works
- confirm date range checks work
- confirm progress_percent range checks work
- confirm completion_percent range checks work
- confirm final lock timestamp check works
- confirm evidence reference parent existence check works

negative_test_targets:
- objective with progress_percent = 101
- action_plan with completion_percent = -1
- period with end_date earlier than start_date
- locked objective with null final_locked_at
- evidence_reference with both progress_log_id and review_log_id null

# ============================================================
# 4. FOREIGN KEY CHECK
# ============================================================

foreign_key_check:
- confirm objective -> period FK works
- confirm action_plan -> objective FK works
- confirm progress_log -> objective FK works
- confirm review_schedule -> objective FK works
- confirm review_log -> objective FK works
- confirm evaluation -> objective FK works
- confirm evidence_reference -> progress_log / review_log FKs work
- confirm reopen / ERP governance FKs work
- confirm self-reference objective source FK works
- confirm template source FK works

# ============================================================
# 5. INDEX CHECK
# ============================================================

index_check:
- confirm core lookup indexes exist
- confirm objective owner/manager/period/status indexes exist
- confirm latest progress/review query indexes exist
- confirm ERP history indexes exist
- confirm reopen queue indexes exist
- confirm job status indexes exist

performance_check_targets:
- objective list by period and owner
- dashboard read by company/period
- latest progress lookup
- latest review lookup
- ERP failure queue lookup
- reopen queue lookup

# ============================================================
# 6. TRIGGER CHECK
# ============================================================

trigger_check:
- confirm updated_at trigger exists for mutable master tables
- confirm updated_at changes on update
- confirm append-only tables are not unexpectedly updated
- confirm reopen_request updated_at changes on status update

# ============================================================
# 7. RLS CHECK
# ============================================================

RLS_check:
- confirm RLS is enabled on target tables
- confirm objective_owner can read and write only allowed own records
- confirm manager can read subordinate scope and write review areas only
- confirm evaluator can draft/confirm evaluation only where allowed
- confirm HR_operator can read ERP history and create resend/export/reminder jobs
- confirm executive_viewer remains read-only
- confirm department_template_admin manages template area only
- confirm system_auditor remains read-only
- confirm locked records block ordinary write paths

RLS_test_contexts:
- objective_owner token
- manager token
- evaluator token
- HR_operator token
- executive_viewer token
- department_template_admin token
- system_auditor token

# ============================================================
# 8. VIEW CHECK
# ============================================================

view_check:
- confirm latest progress view returns newest record only
- confirm latest review view returns newest review only
- confirm linkage summary view returns correct counts
- confirm review schedule effective_status marks overdue correctly
- confirm dashboard core view joins correctly
- confirm objective detail/list API views return expected fields
- confirm ERP failure API view returns ERP_failed only
- confirm reopen queue API view returns governed reopen requests only
- confirm dashboard counts view aggregates correctly

# ============================================================
# 9. MASTER / SEED CHECK
# ============================================================

master_seed_check:
- confirm master tables exist
- confirm initial master values inserted
- confirm no duplicate seed errors on rerun where on conflict is used
- confirm status/priority/reopen/job master values match design docs
- confirm export format and reminder type masters exist

# ============================================================
# 10. SAMPLE DATA CHECK
# ============================================================

sample_data_check:
- confirm open period sample inserted
- confirm active objective sample inserted
- confirm finalized objective sample inserted
- confirm transferred objective sample inserted
- confirm evaluation draft/confirmed related samples inserted as expected
- confirm ERP failed and ERP sent samples inserted
- confirm resend sample inserted
- confirm reopen governance sample inserted
- confirm export/reminder/calibration samples inserted
- confirm dashboard helper views return non-empty sample results

# ============================================================
# 11. OPERATIONAL FLOW CHECK
# ============================================================

operational_flow_check:
- create objective succeeds
- create action plan succeeds
- create progress log succeeds on unlocked objective
- create progress log fails on locked objective
- create review schedule succeeds for allowed role
- create review log succeeds for allowed role
- evaluation confirm locks record
- ERP history can record failed and sent states
- resend job can be created from failed transmission
- reopen request can be created and approved
- reopen request remains historically traceable

# ============================================================
# 12. VALIDATION RESULT RECORDING
# ============================================================

validation_result_recording:
- record environment name
- record execution mode (phased or integrated)
- record validator
- record run timestamp
- record passed checks
- record failed checks
- record SQL errors if any
- record rerun behavior notes
- record reviewer comments from Sato

