# ============================================================
# PROJECT FLOW MIGRATION SPLIT PLAN NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero
review_required:
- Sato(DB)

purpose:
Defines future migration split plan without executing development.

recommended_migration_order:
1. schema_and_core_project_tables
2. task_milestone_issue_risk_tables
3. time_entry_and_sync_tables
4. export_and_report_tables
5. template_and_schedule_proposal_tables
6. memo_comment_form_tables
7. automation_rule_and_notification_tables
8. indexes_and_constraints_hardening
9. triggers_and_updated_at
10. optional_rls_phase

split_rules:
- start with additive-only migrations
- keep table creation separate from hardening where useful
- keep trigger introduction separate from base table creation where useful
- review enum/check constraint hardening with DB owner
